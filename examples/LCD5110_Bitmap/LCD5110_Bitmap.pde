// LCD5110_Bitmap 
// Copyright (C)2015 Rinky-Dink Electronics, Henning Karlsen. All right reserved
// web: http://www.RinkyDinkElectronics.com/
//
// This program is a demo of how to use bitmaps.
// You can also see how to use invert().
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

extern uint8_t arduino_logo[];
extern uint8_t oshw_logo[];

void setup()
{
  myGLCD.InitLCD();
}

void loop()
{
  myGLCD.drawBitmap(0, 0, arduino_logo, 84, 48);
  delay(4000);
  for (int i=0; i<2; i++)
  {
    myGLCD.invert(true);
    delay(500);
    myGLCD.invert(false);
    delay(500);
  }
  delay(4000);

  myGLCD.clrScr();
  myGLCD.drawBitmap(14, 0, oshw_logo, 56, 48);
  delay(4000);
  for (int i=0; i<2; i++)
  {
    myGLCD.invert(true);
    delay(500);
    myGLCD.invert(false);
    delay(500);
  }
  delay(4000);
}
