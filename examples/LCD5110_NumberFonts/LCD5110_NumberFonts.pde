// LCD5110_NumberFonts 
// Copyright (C)2015 Rinky-Dink Electronics, Henning Karlsen. All right reserved
// web: http://www.RinkyDinkElectronics.com/
//
// This program is a demo of the included number-fonts,
// and how to use them.
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
extern uint8_t BigNumbers[];

void setup()
{
  myGLCD.InitLCD();
}

void loop()
{
  for (int i=0; i<=10000; i++)
  {
    myGLCD.setFont(MediumNumbers);
    myGLCD.printNumF(float(i)/3, 2, RIGHT, 0);
    myGLCD.setFont(BigNumbers);
    myGLCD.printNumI(i, RIGHT, 24);
  }
  
  myGLCD.setFont(SmallFont);
  myGLCD.print("|            |", CENTER, 16);
  delay(500);
  for (int i=0; i<12; i++)
  {
    myGLCD.print("\\", 6+(i*6), 16);
    delay(500);
  }
  myGLCD.clrScr();
}
