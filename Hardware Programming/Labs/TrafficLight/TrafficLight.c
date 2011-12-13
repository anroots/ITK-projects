/**
 * Traffic light class
**/

// Define the colors of a traffic light
enum Colors {RED, YELLOW, GREEN};

// Represents a single light in the Traffic Light
struct Light {
	char a;
};


/*
struct MyStructTag ; /

typedef struct MyStructTag
{
   int a;
} MyStruct ;

void doSomething(MyStruct * p) 
{
   MyStruct a ;
}*/

struct TrafficLight;

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
void on(const struct blob TLight) {

	/*switch (light_id) {
		case 0: // All lights

		break;

		case 1:

		break;

		case 2:

		break;

		case 3:

		break;
	}*/
	
	//LIGHTS = light_id;
}