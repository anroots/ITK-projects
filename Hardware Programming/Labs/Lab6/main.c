#include <8051.h>

/**
 * Subject: Hardware Programming 2011
 * Lab 6
 * Assignment: Microwave oven with timer, keyboard and 7-segment * 4 display
 * Team members:
 * 	Ando Roots
 * 	Eero Jämsä
 *	Marek Kikkas
**/

// Keypad port
#define KEYPAD_PORT P1

// Define start/stop state
// Changes with START button press
unsigned char RUNNING = 0;


// The max number of digits we need to display the time
// If we only have seconds up to 60, we'd use 2 digits
unsigned char NUMBER_OF_DIGITS = 4;

// An array of numbers 0...9 for LED display
unsigned char NUMBERS [] = {0xc0, 0xf9, 0xa4, 0xb0, 0x99,
0x92, 0x82, 0xf8, 0x80, 0x90};


// Used to create an artificial delay
unsigned long cycle_delay, cycle_duration;

// Key code for the START / STOP button
unsigned char BUTTON_START = 35;

// Error code - no key pressed
unsigned char BUTTON_ERROR = 255;

/**
 * The time in seconds the oven works.
 * Set before start and decremented by 1 each second when running
 * Converted to ii:ss (minutes:seconds) for displaying
**/
short int seconds_left = 0; 



/** 
 * Reads number form matrix keypad
 * We need to read data twice from keypad port:
 * First we get column number from the matrix and then row number.
 * Some special values: 
     A - 10    (hex)
     B - 11    (hex)
     C - 12    (hex)
     D - 13    (hex)
     * - 42    (ASCII)
     # - 35    (ASCII)
*/
unsigned char GetNumberFromMatrixKeypad()
{
    unsigned char col = 0, row = 0;
    KEYPAD_PORT = 240;    //column info
    switch(P1)
    {
        case 224:    col = 1;    break;   
        case 208:    col = 2;    break;    
        case 176:    col = 3;    break;    
        case 112:    col = 4;    break;    
        default: break;
    }
    
    KEYPAD_PORT = 15;    //row info
    switch(P1)
    {
        case 14:    row = 1;    break;
        case 13:    row = 2;    break;
        case 11:    row = 3;    break;
        case 7:    row = 4;    break;
        default: break;
    }

    if((col == 1) && (row == 1))
        return 1;
    else if((col == 2) && (row == 1))
        return 2;
    else if((col == 3) && (row == 1))
        return 3;
    else if((col == 4) && (row == 1))    //Letter A
        return 10;
    else if((col == 1) && (row == 2))
        return 4;
    else if((col == 2) && (row == 2))
        return 5;
    else if((col == 3) && (row == 2))
        return 6;
    else if((col == 4) && (row == 2))    //Letter B
        return 11;
    else if((col == 1) && (row == 3))
        return 7;
    else if((col == 2) && (row == 3))
        return 8;
    else if((col == 3) && (row == 3))
        return 9;
    else if((col == 4) && (row == 3))    //Letter C
        return 12;
    else if((col == 1) && (row == 4))    //Char * (ASCII 42)
        return 42;
    else if((col == 2) && (row == 4))
        return 0;
    else if((col == 3) && (row == 4))    //Char # (ASCII 35)
        return 35;
    else if((col == 4) && (row == 4))    //Letter D
        return 13;
    else
        return BUTTON_ERROR;    //error code :)
}


/**
 * Reset the 4*7 segment display
**/
void reset_display() {
	P3_0 = 1;
	P3_1 = 1;
	P3_2 = 1;
	P3_3 = 1;
}

/**
 * Writes value to segment_number
 * The idea is that each segment is updated in sequence
 * and then deleted (on-off), but since the cycle speed is so
 * high, the human eye doesn't notice the off-phase
**/
void write_segment(unsigned char segment_number, unsigned char value) {

	reset_display();

	// This is the actual numerical value
	P2 = NUMBERS[value];
	
	// Only write to the specified segment
	switch (segment_number) {
		case 0:
			P3_1 = 1;
			P3_2 = 1;
			P3_3 = 1;
			P3_0 = 0;
			break;
		case 1:
			P3_0 = 1;
			P3_2 = 1;
			P3_3 = 1;
			P3_1 = 0;
			break;
		case 2:
			P3_3 = 1;
			P3_1 = 1;
			P3_0 = 1;
			P3_2 = 0;
			break;
		case 3:
			P3_0 = 1;
			P3_1 = 1;
			P3_2 = 1;
			P3_3 = 0;
	}
}

/**
 * Returns a specified digit from a n-digit number 
 * Read from left to right
 * Example: get_digit(1245, 0) would return 1
 * Example: get_digit(1245, 1) would return 2
 * Max input value for 'value': 65,535 
**/
unsigned short int get_digit(unsigned int value, unsigned char place) {

	// Define powers of 10 (for speed)
	unsigned int powers [] = {1, 10, 100, 1000};
	
	// Return 0 if input is not long enough
	if (value < 10 && place > 1) {
		return 0;
	} else if (value < 100 && place > 2) {
		return 0;
	} else if (value < 1000 && place > 3) {
		return 0;
	}
	
	return (unsigned short int)(value / powers[place]) % 10;
}


/**
 * Writes a number to the LED display
 * Can handle up to 16-bit numbers (0 - 65 535)
**/
void display(unsigned short int value) { // todo: should be unsigned short int

	unsigned char i;
	
	// Separate value to digits and print each one
	for (i = 0; i < NUMBER_OF_DIGITS; i++) {
		write_segment(i, get_digit(value, i));
	}
}


/**
 * Wait a bit for mechanical switch contacts to settle
**/
void bounce_delay() {
	for (cycle_delay = 0; cycle_delay < 10; cycle_delay++);
}


/**
 * If the START button is pressed
 * (or re-pressed for STOP)
**/
void check_start_press(){

    	if (P1_3 && P1_6) {

		bounce_delay();
	    	if (P1_3 && P1_6 == 1) {
	    		display(1111); // for testing if btn was pressed
	    		
			/**
			 * Create an artificial time delay
			 * Needed so the user can have time to remove his/her finger
			 * from the button before the BUTTON_ENTER == 1 is checked again
			**/
			for (cycle_delay = 0; cycle_delay < cycle_duration; cycle_delay++);

		}
    	} else {
		reset_display();
    	}
}


// Initialization
void init(void) {
	KEYPAD_PORT = 1; // Define as input
    	
	cycle_duration = 1; // The artificial time delay is X cycles long
}

/**
 * Set time left. When the oven is OFF, the user can press the numeric
 * keypad buttons up to 4 times to set the time.
 * The first 2 digits act as seconds, the last 2 as minutes
 * This function must know which digit is entered and set the
 * seconds_left variable accordingly.
**/
void set_time(unsigned char digit) {
	seconds_left = digit; // Todo!
}

/**
 * Start the oven
**/
void start() {
	// Configure timer
	/*TH0 = 0xB8;
	TL0 = 0x00;
	TMOD = 0x01;
	TR0 = 1; // Start the timer
*/
	RUNNING = 1; // Set system running state - todo deprecate by using TR0 for that
}

/**
 * Stop the oven
**/
void stop() {
	//return; // Disabled for testing
	RUNNING = 0;
	seconds_left = 0;
	TR0 = 0; // Stop the timer
}

/**
 * Take action when key is pressed
**/
void process_key_press() {
	unsigned char pressed_key = GetNumberFromMatrixKeypad(); // Current button or error code
	
	if (pressed_key == BUTTON_ERROR || (pressed_key > 9 && pressed_key != BUTTON_START)) { // No key pressed (or invalid), standby...
		return;
	}

	// Any keypress stops the oven when it's running
	if (RUNNING) {
		stop();
		return;
	}

	if (pressed_key == BUTTON_START) { // Start?
		start();
	} else { // Button was numeric
		set_time(pressed_key);
	}
	
}

/**
 * Converts seconds into ii:ss (minutes:seconds) format for displaying
**/
unsigned short int convert_seconds(short int seconds) {
	return seconds; // Todo!
}

// Main
void main (void) {
	init(); // Initialize

	while (1) { // Run main program forever

		process_key_press(); // Check for keyboard press
		
		// ----------------------- STATE 0: Oven is not running ----------------------- //
		if (!RUNNING) {

			

		// ------------------------- STATE 1: Oven is running ------------------------- //		
		} else {
			if (seconds_left == 0) {
				stop();
			}
			/*while (!TF0)	{
				display(seconds_left);

 			}*/
 			seconds_left = seconds_left - 1;
		  	/*TH0 = 0xB8;
	   		TF0 = 0;
			*/
		}
		// Show remaining time
		display(convert_seconds(seconds_left));	
	}
}
