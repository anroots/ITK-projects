#include <8051.h>
#include "TrafficLight.c"

/**
 * Subject: Hardware Programming 2011
 * Lab 9: Traffic light
 * Team members:
 * 	Ando Roots
 * 	Eero Jämsä
 *	Marek Kikkas
**/


__sfr __at (0x90) LIGHTS;

// Define the colors of a traffic light
enum colors {RED, YELLOW, GREEN};



/**
 * Configure startup environment
**/
void init() {

}

/**
 * Turns all lights OFF
**/
void brownout() {
	LIGHTS = 1;
}

/**
 * Turns on a single light
 * light_id The ID of the light to activate
**/
void switch_on(char light_id) {
	LIGHTS = light_id;
}

/**
 * Main superloop function
**/
void main(void) {
	init();

	while(1) {
	char i = 0;
		for (i=0;i<5;i++) {
			brownout();
			switch_on(i);
		}
	}
}