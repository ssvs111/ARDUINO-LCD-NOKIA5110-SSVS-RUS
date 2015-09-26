// LCD5110_Sleep_Mode
// Copyright (C)2015 Rinky-Dink Electronics, Henning Karlsen. All right reserved
// web: http://www.RinkyDinkElectronics.com/
//
// This program is a demo of sleep mode.
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


extern uint8_t SmallFont[];
extern uint8_t MediumNumbers[];

void setup()
{
  myGLCD.InitLCD();
}

void loop()
{
  myGLCD.setFont(SmallFont);
  myGLCD.clrScr();
  myGLCD.print("Entering", CENTER, 0);
  myGLCD.print("Sleep Mode", CENTER, 8);
  myGLCD.print("in", CENTER, 16);
  myGLCD.print("Seconds", CENTER, 40);

  myGLCD.setFont(MediumNumbers);
  for (int s=10; s>=0; s--)
  {
    myGLCD.printNumI(s, CENTER, 24, 2, '0');
    delay(1000);
  }
  
  myGLCD.enableSleep();

  delay(5000);
  myGLCD.disableSleep();
  myGLCD.setFont(SmallFont);
  myGLCD.print("Awake again!", CENTER, 0);
  myGLCD.print("The screen was", CENTER, 16);
  myGLCD.print("cleared while", CENTER, 24);
  myGLCD.print("in Sleep Mode.", CENTER, 32);
  delay(5000);
}
