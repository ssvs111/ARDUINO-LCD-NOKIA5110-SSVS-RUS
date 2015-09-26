// LCD5110_ViewFont 
// Copyright (C)2015 Rinky-Dink Electronics, Henning Karlsen. All right reserved
// web: http://www.RinkyDinkElectronics.com/
//
// This program is a demo of the included full font.
//
// This program requires a Nokia 5110 LCD module.
//
// It is assumed that the LCD module is connected to
// the following pins using a levelshifter to get the
// correct voltage to the module.
//      SCK  - Pin 6
//      MOSI - Pin 7
//      DC   - Pin 8
//      RST  - Pin 9
//
#include <LCD5110_SSVS.h>

LCD5110 myGLCD(6, 7, 8, 9);

LCD5110 myGLCD(8,9,10,11,12);

extern uint8_t SmallFont[];

void setup()
{
  myGLCD.InitLCD();
  myGLCD.setFont(SmallFont);
}

void loop()
{
  myGLCD.clrScr();
  myGLCD.print("Upper case:", LEFT, 0);
  myGLCD.print("ABCDEFGHIJKLM", CENTER, 16);
  myGLCD.print("NOPQRSTUVWXYZ", CENTER, 24);
  delay (5000);
  
  myGLCD.clrScr();
  myGLCD.print("Lower case:", LEFT, 0);
  myGLCD.print("abcdefghijklm", CENTER, 16);
  myGLCD.print("nopqrstuvwxyz", CENTER, 24);
  delay (5000);
  
  myGLCD.clrScr();
  myGLCD.print("Numbers:", LEFT, 0);
  myGLCD.print("0123456789", CENTER, 16);
  delay (5000);
  
  myGLCD.clrScr();
  myGLCD.print("Special:", LEFT, 0);
  myGLCD.print("!\"#$%&'()*+,-.", CENTER, 16);
  myGLCD.print("/:;<=>?@[\\]^_`", CENTER, 24);
  myGLCD.print("{|}~", CENTER, 32);
  delay (5000);
}
