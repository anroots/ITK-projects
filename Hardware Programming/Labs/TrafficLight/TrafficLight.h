/**
 * Traffic light header file
 * Common variable and type definitions
**/

__sfr __at (0x90) TLightBulbs;
__sbit __at (0x90) TLightMain;
__sbit __at (0x91) TLightLeftTurn;
__sbit __at (0x92) TLightAside;
__sbit __at (0x93) TLightAsidePedestrian;
__sbit __at (0x94) TLightMainPedestrian;

//__sbit __at (0x95) TLightLinnuGreen;
//__sbit __at (0x96) TLightMainLeftRed ;
//__sbit __at (0x97) TLightMainLeftGreen;