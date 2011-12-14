/**
 * Subject: Hardware Programming 2011
 * Lab 9: Traffic light
 * Team members:
 * 	Ando Roots
 * 	Eero Jämsä
 *	Marek Kikkas
**/

#include <8051.h>

#include "TrafficLight.h"

/**
 * The number of different TrafficLight stands
**/
const unsigned char NUMBER_OF_STANDS = 4; // Todo

// Define the colors of a traffic light
enum Colors {RED, YELLOW, GREEN};


/**
 * Represents a single light in the Traffic Light
**/
typedef struct Light {
	/**
	 * The P2 and P3 addresses that should be set
	 * for the light to "burn"
	 * @see SarcasmException
	 **/
	unsigned char addrP2, addrP3;
	
	enum Color color;
}Light;


typedef struct TrafficLight {
	Light Red;
	Light Yellow;
	Light Green;

	Light *CurrentlyOn;
	
} TrafficLight;


TrafficLight TrafficLights[4];

/**
 * Configure startup environment
**/
void init(void) {

	TrafficLights[0].Red.addrP2 = 0x91;
	TrafficLights[0].Red.addrP3 = 0x01;
	return;
}



/**
 * Switch off all the traffic lights at once
**/
void brownout() {
	P2 = 0;
	P3 = 0;
}

/**
 * Activates different stages in the
 * Traffic light life-cycle
 * @param stage_id The ID of the stage to activate, defaults none (all lights off)
**/
void activate_stage(unsigned char stage_id) {
	brownout();
	
	switch (stage_id) {
	
		case 0: // Test function
			
		break;
		
		case 1:
			
		break;

		case 2:
			
		break;

		case 3:
			
		break;
	}
}


	__sbit __at (0x83) P0_32 ;
void burn() {

	//volatile unsigned int *miki = (volatile unsigned int *)0xA5;
	//volatile * miki = (unsigned int volatile *) &0xA5;
	//volatile unsigned char mm = (*(volatile unsigned char *) 0xA5);
	P3 = 0x00;
	//PPP = 0x00;
	//miki = 0x00;
	
	//P2_5 = 0x06;
	//P2_5 = 0x00;
	/*unsigned char i;
	for (i = 0; i<NUMBER_OF_STANDS; i++) {
		
	}*/
	return;
}

void wait() {
	unsigned long cycle_delay;
	for (cycle_delay = 0; cycle_delay < 10; cycle_delay++);
}

/**
 * Main superloop function
**/
void main() {

	
	
	init();
	while(1) {
	

			//activate_stage(1);
			burn();
			//wait();
		
	}
}