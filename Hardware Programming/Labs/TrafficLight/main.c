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
#define OFF 0xFF;

/**
 * The number of different TrafficLight stands
**/
const unsigned char NUMBER_OF_STANDS = 4; // Todo

// Define the colors of a traffic light
typedef enum Colors {RED, YELLOW, GREEN};


/**
 * Represents a single light in the Traffic Light
**/
typedef struct Light {
	/**
	 * Workaround. Ideally we'd have 2 pointers to sbits of X&Y here for
	 * the matrix LED position. However, this appears to be impossible. Yes, freakin' impossible.
	**/
	unsigned char id;

	// The color of the light
	//enum Color color;
	
}Light;


typedef struct TrafficLight {
	Light Red;
	Light Yellow;
	Light Green;

	enum Colors CurrentlyOn;
	
} TrafficLight;


TrafficLight TrafficLights[4];

/**
 * Configure startup environment
**/
void init(void) {

	unsigned char i, id;
	id =1;
	for (i = 0; i<4; i++) {
		TrafficLights[i].Red.id = id;
		id = id +1;
		TrafficLights[i].Yellow.id = id;
		id = id + 1;
		TrafficLights[i].Green.id = id;
		id = id +1;
	}
	return;
}




/**
 * Switch off all the traffic lights at once
**/
void brownout() {
	P2 = 0xFF;
	P3 = 0xFF;
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
			TrafficLights[0].CurrentlyOn = RED;
		break;

		case 2:
			TrafficLights[0].CurrentlyOn = YELLOW;
		break;

		case 3:
			TrafficLights[0].CurrentlyOn = GREEN;
		break;
	}
}



/**
 * Switch on a single bulb
**/
void burn_bulb(unsigned char light_id) {
	switch (light_id) {
		case 1:
			P2_1 = ON;
			P3_0 = ON;
		break;
		case 2:
			P2_2 = ON;
			P3_0 = ON;
		break;
		case 3:
			P2_3 = ON;
			P3_0 = ON;
		break;
		case 4:
			P3_1 = ON;
			P2_1 = ON;
		break;
		case 5:
			P3_1 = ON;
			P2_2 = ON;
		break;
		case 6:
			P3_1 = ON;
			P2_3 = ON;
		break;
		}
	return;
}


/**
 * Set all TrafficLight Lights to ON
**/
void burn() {
	unsigned char j;
	for (j = 0; j < 4; j++) {
		unsigned char light_id;
		
		switch (TrafficLights[j].CurrentlyOn) {
			case RED:
				light_id = TrafficLights[j].Red.id;
			break;

			case YELLOW:
				light_id = TrafficLights[j].Yellow.id;
			break;

			case GREEN:
				light_id = TrafficLights[j].Green.id;
			break;
		}
		
		burn_bulb(light_id);
	}
	return;
}

void wait() {
	/*unsigned long cycle_delay;
	for (cycle_delay = 0; cycle_delay < 10; cycle_delay++);*/
	return;
}

/**
 * Main superloop function
**/
void main() {

	init();
	while(1) {
		unsigned char i;
		for (i = 1; i<4; i++) {
			activate_stage(i);
			burn();
			wait();
		}
	}
}