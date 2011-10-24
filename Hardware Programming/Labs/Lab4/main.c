#include <8051.h>

/**
 * Subject: Hardware Programming
 * Lab 4
 * Assignment: A car-parking counter with 2 buttons for enter / exit
 * and a LED display for showing the number of open spaces
 * Team members:
 * 	Ando Roots
 * 	Eero Jämsä
 *	Marek Kikkas
**/

// Define 2 buttons for entrance and exit
#define BUTTON_ENTER P1_0
#define BUTTON_EXIT P1_1

// Define a (whole) port to be used for LED
//#define LED P2

// Variable to hold the number of current free slots
unsigned char free_slots;

unsigned int MAX_SLOTS;

// An array of numbers 0...9 for LED display
unsigned char NUMBERS [] = {0xc0, 0xf9, 0xa4, 0xb0, 0x99,
0x92, 0x82, 0xf0, 0x80, 0x90};

// Used to create an artificial delay
unsigned long cycle_delay, cycle_duration;


// Initialization
void init(void) {
    MAX_SLOTS = 10; // We have this many free slots, max
    
    free_slots = MAX_SLOTS; // All slots are empty in the beginning
    
    BUTTON_ENTER = 1; // Define as input
    BUTTON_EXIT = 1; // Define as input

    cycle_duration = 1; // The artificial time delay is X cycles long
}

/**
 * Writes value to segment_number
 * The idea is that each segment is updated in sequence
 * and then deleted (on-off), but since the cycle speed is so
 * high, the human eye doesn't notice the off-phase
**/
void write_segment(unsigned char segment_number, unsigned char value) {

	P3_0 = 1; // Reset P3 to avoid flickers
	P3_1 = 1;
	P3_2 = 1;

	// This is the actual numerical value
	P2 = NUMBERS[value];
	
	// Only write to the specified segment
	switch (segment_number) {
		case 0:
			P3_1 = 1;
			P3_2 = 1;
			P3_0 = 0;
			break;
		case 1:
			P3_0 = 1;
			P3_2 = 1;
			P3_1 = 0;
			break;
		case 2:
			P3_3 = 1;
			P3_1 = 1;
			P3_2 = 0;
			break;
	}
}

/**
 * Returns a specified digit from a n-digit number 
**/
unsigned char get_digit(unsigned int value, unsigned char place) {
	return 4;
}


/**
 * Writes a number to the LED display
 * Can handle up to 3-digit decimal numbers (<=250)
**/
void display(unsigned int value) {

	// Separate value to digits and print each one
	write_segment(2, get_digit(value, 3));
	write_segment(1, get_digit(value, 2));
	write_segment(0, get_digit(value, 1));
}


/**
 * If a car leaves the parking house...
**/
void check_outgoing(){

    	if (BUTTON_EXIT == 1) {

    		// Don't allow the counter to exceed MAX_SLOTS
		if (free_slots < MAX_SLOTS) {
			free_slots++;
		}
    	}
}

/**
 * If a new car enters to the parking house...
**/
void check_incoming() {
	if (BUTTON_ENTER == 1) {
		// Don't allow the counter to go negative	
		if (free_slots > 0) {    
			free_slots--;
		}
    	}
}

// Main
void main (void) {
	init(); // Initialize

 	// LED test
	while(1) {
		display(112); // test OK if 100
	}

	while (1) {

		check_incoming(); // Car enters

		check_outgoing(); // Car leaves
		   
		/**
		 * Create an artificial time delay
		 * Needed so the user can have time to remove his/her finger
		 * from the button before the BUTTON_ENTER == 1 is checked again
		**/
		for (cycle_delay = 0; cycle_delay < cycle_duration; cycle_delay++);

		display(free_slots); // Output the number of free slots
	}
}
