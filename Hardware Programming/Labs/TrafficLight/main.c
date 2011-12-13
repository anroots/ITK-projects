/**
 * Subject: Hardware Programming 2011
 * Lab 9: Traffic light
 * Team members:
 * 	Ando Roots
 * 	Eero Jämsä
 *	Marek Kikkas
**/

#include <8051.h>

//#include "TrafficLight.c"


// Define the colors of a traffic light
enum Colors {RED, YELLOW, GREEN};

// Represents a single light in the Traffic Light
struct Light {
	char a;
};



//struct TrafficLight;

typedef struct {
	int a;
	int b;
} TrafficLight;


/**
 * Turns all lights OFF
**/
void off() {
	//LIGHTS = 0;
}

/**
 * Turns on a single light
 * @param light_id The ID of the light to activate
**/
void on(TrafficLight * TLight) {


}

__sfr __at (0x90) LIGHTS;

//TrafficLight TrafficLights[2];

/**
 * Configure startup environment
**/
void init() {

}



/**
 * Main superloop function
**/
void main(void) {
	init();

	TrafficLight light;
	while(1) {
	char i = 0;
		for (i=0;i<5;i++) {
			//on(foor);
		}
	}
}