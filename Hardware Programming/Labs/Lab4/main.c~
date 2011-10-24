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

// WARNING: UNCOMPILED AND UNTESTED CODE!!!


// Define 2 buttons for entrance and exit
#define BUTTON_ENTER P1_1
#define BUTTON_EXIT P1_2

// Define a (whole) port to be used for LED
#define LED P2

// Variable to hold the number of current free slots
unsigned char FREE_SLOTS;

// An array of numbers 0...9 for LED display
unsigned char OUT [] = {0xc0, 0xf9, 0xa4, 0xb0, 0x99,
0x92, 0x82, 0xf0, 0x80, 0x90};

// Used to create an artificial delay
unsigned int cycle_delay;

// Initialization
void init(void) {
    LED = 0xc0; // LED display is set to 0 when the system turns on
    FREE_SLOTS = 10; // We have X free slots in the parking house
    
    BUTTON_ENTER = 1; // Define as input
    BUTTON_EXIT = 1; // Define as input
}

void main (void)
{

	// Initialize
	init();

	// todo! Comment
	while (1)
	{
	    if (BUTTON_ENTER == 1)
	    {
	
	        if (FREE_SLOTS > 0) {    
	            FREE_SLOTS--;
	        }
	
	
	        LED = OUT[FREE_SLOTS];
		
		for (cycle_delay = 0; cycle_delay < 1000; cycle_delay++);
	    }
	}
}
