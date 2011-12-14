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
#define ON 0x00;
#define OFF 1;

// Define the colors of a traffic light
enum Colors {RED, YELLOW, GREEN};


/**
 * Represents a single light in the Traffic Light
**/
typedef struct Light {
	/**
	 * The location of the LED
	 * @see 8051.h
	 **/
	 char addr;
	
}Light;


typedef struct TrafficLight {
	Light Red;
	Light Yellow;
	Light Green;

	Light *CurrentlyOn;
	
} TrafficLight;


TrafficLight TrafficLights[2];

/**
 * Configure startup environment
**/
void init(void) {

	TrafficLights[0].Red.addr = 0x91;
	return;
}



/**
 * Switch off all the traffic lights at once
**/
void brownout() {
	TLightBulbs = OFF;
		TLightMain = OFF;
		TLightLeftTurn = OFF;
		TLightAside = OFF;
		TLightAsidePedestrian = OFF;
		TLightMainPedestrian = OFF;
}

/**
 * Activates different stages in the
 * Traffic light life-cycle
 * @param stage_id The ID of the stage to activate, defaults none (all lights off)
**/
void activate_stage(unsigned char stage_id) {
	brownout();
	
	switch (stage_id) {
		case 1:
			TLightMain = ON;
			TLightAsidePedestrian = ON;
		break;

		case 2:
			TLightLeftTurn = ON;
		break;

		case 3:
			TLightMain = ON;
			TLightMainPedestrian = ON;
			TLightAside = ON;
		break;
	case 0: // Test function
		TLightBulbs = ON;
		TLightMain = ON;
		TLightLeftTurn = ON;
		TLightAside = ON;
		TLightAsidePedestrian = ON;
		TLightMainPedestrian = ON;
	break;
	}
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
	
	char i = 0;
		for (i=0;i<3;i++) { 
			activate_stage(i);
			wait();
		}
	}
}