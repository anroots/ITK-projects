#include <8051.h>

/**
 * Subject: Hardware Programming
 * Lab 4
 * Assignment: A car-parking counter with 2 buttons for enter / exit
 * and a LED display for showing the number of open spaces
 * Team members:
 * 	Ando Roots
 * 	Eero Jämsa
 *	Marek Kikkas
**/

// Define 2 buttons for entrance and exit
#define BUTTON_ENTER P1_0
#define BUTTON_EXIT P1_1

// Define a (whole) port to be used for LED
#define LED P2

// Variable to hold the number of current free slots
unsigned char free_slots;

unsigned int MAX_SLOTS;

// An array of numbers 0...9 for LED display
unsigned char OUT [] = {0xc0, 0xf9, 0xa4, 0xb0, 0x99,
0x92, 0x82, 0xf0, 0x80, 0x90};

// Used to create an artificial delay
unsigned long cycle_delay, cycle_duration;

// Initialization
void init(void) {
    LED = 0xc0; // LED display is set to 0 when the system turns on, then changes to MAX slots
    MAX_SLOTS = 10; // We have this many free slots, max
    
    free_slots = MAX_SLOTS; // All slots are empty in the beginning
    
    BUTTON_ENTER = 1; // Define as input
    BUTTON_EXIT = 1; // Define as input

    cycle_duration = 10; // The artificial time delay is X cycles long
}

/**
 * Writes value to segment_number
**/
void write_segment(unsigned char segment_number, unsigned char value) {
	// todo
}


/**
 * Writes a number to the LED display
 * Can handle up to 2-digit decimal numbers
**/
void display(unsigned int value) {

	// We have 2 7-segment displays, divide the number among them and use
	// write_segment to write to both of them 
	write_segment(1, 0);
	write_segment(0, 0);
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
