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
 * Turn on 
**/
void on(TrafficLight *l, __sbit light_addr, char i) {
	
	light_addr = i;
}

/**
 * Main superloop function
**/
void main() {

	
	
	init();
	while(1) {
	
	char i = 0;
		for (i=0;i<5;i++) { 
			on(&TrafficLights[0], TLightMainRed, i);
		}
	}
}