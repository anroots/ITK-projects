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
unsigned char NUMBER_OF_STANDS = 3; // Todo

// Number of total bulbs
unsigned char NUMBER_OF_BULBS = 9;

// Defines the number of different light permutations
unsigned char NUMBER_OF_PHASES = 4;

/**
 * If the button (WaitingToCross) is pressed
 * then the value is 1. We need to check that to determine if special operation
 * mode needs to be activated.
**/
unsigned char pedestrian_waiting = 0;
	
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


TrafficLight TrafficLights[4]; // Todo

/**
 * Configure startup environment
**/
void init(void) {


	unsigned char i, id;
	id =1;
	for (i = 0; i<NUMBER_OF_STANDS; i++) {
		TrafficLights[i].Red.id = id;
		id += 1;
		TrafficLights[i].Yellow.id = id;
		id += 1;
		TrafficLights[i].Green.id = id;
		id += 1;
	}	
	P1_0 = 1; // Input button for pedestrians
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
 * Switch on a single bulb
**/
void burn_bulb(unsigned char light_id) {
	// Todo: Figure out how to refer to ports as pointers / variables
	// so as to rewrite the function based on division
	
	switch (light_id) {
		case 1: // 1red
			P2_0 = ON;
			P3_0 = ON;
		break;
		case 2: //1yellow
			P2_1 = ON;
			P3_0 = ON;
		break;
		case 3: //1green
			P2_2 = ON;
			P3_0 = ON;
		break;
		case 4: //2red
			P3_1 = ON;
			P2_0 = ON;
		break;
		case 5: //2yellow
			P3_1 = ON;
			P2_1 = ON;
		break;
		case 6: //2green
			P3_1 = ON;
			P2_2 = ON;
		break;
		case 7: //3red
			P3_2 = ON;
			P2_0 = ON;
		break;
		case 8: //2yellow
			P3_2 = ON;
			P2_1 = ON;
		break;
		case 9: //3green
			P3_2 = ON;
			P2_2 = ON;
		break;
		
		}
	return;
}

/**
 * Burn all bulbs in sequence
 * Testing function only
**/
void test_all_bulbs(){
	unsigned char i;
	for (i = 0; i<=NUMBER_OF_BULBS; i++) {
		brownout();
		burn_bulb(i);
	}
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
			test_all_bulbs();
		break;
		
		case 1:
			TrafficLights[0].CurrentlyOn = RED;
			TrafficLights[1].CurrentlyOn = GREEN;
			TrafficLights[2].CurrentlyOn = GREEN;
		break;

		case 2:
			TrafficLights[0].CurrentlyOn = YELLOW;
			TrafficLights[1].CurrentlyOn = YELLOW;
			TrafficLights[2].CurrentlyOn = YELLOW;
		break;

		case 3:
			TrafficLights[0].CurrentlyOn = GREEN;
			TrafficLights[1].CurrentlyOn = RED;
			TrafficLights[2].CurrentlyOn = GREEN;
		break;

		case 4: // Special pedestrian phase, might not get activated at all
			TrafficLights[0].CurrentlyOn = RED;
			TrafficLights[1].CurrentlyOn = RED;
			TrafficLights[2].CurrentlyOn = GREEN;
			pedestrian_waiting = 0;
		break;
		default:
			brownout();
		break;
	}
}



/**
 * Set all TrafficLight Lights to ON
**/
void burn() {
	unsigned char j;
	for (j = 0; j <= NUMBER_OF_STANDS; j++) {
		
		switch (TrafficLights[j].CurrentlyOn) {
			case RED:
				burn_bulb(TrafficLights[j].Red.id);
			break;

			case YELLOW:
				burn_bulb(TrafficLights[j].Yellow.id);
			break;

			case GREEN:
				burn_bulb(TrafficLights[j].Green.id);
			break;
		}
	}
	return;
}

void wait() {
	/*unsigned long cycle_delay;
	for (cycle_delay = 0; cycle_delay < 10; cycle_delay++);*/
	return;
}
void check_pedestrian_button() {
	if (P1_0 == 1) {
		pedestrian_waiting = 1;
	}
	return;
}

/**
 * Main superloop function
**/
void main() {

	init();
	while(1) {
		//test_all_bulbs();
		unsigned char i;
		for (i = 1; i<=NUMBER_OF_PHASES; i++) {
			check_pedestrian_button();
			if (i == 10 && pedestrian_waiting != 1 ) { // Define pedestrian stages here
				continue;
			}
			
			activate_stage(i);
			burn();
			wait();
		}
	}
}