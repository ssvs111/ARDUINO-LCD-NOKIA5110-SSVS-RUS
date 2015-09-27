/*
1. русские буквы вводим английскими т.е. слово "Всего:" мы пишем как "D[jl&"
2. для отображения переменнвх типа byte, int, long (цифровых короче) сначала преобразуем их 
   в тип String
*/
#include <LCD5110_SSVS.h>//CLK, DIN, DC, RST

LCD5110 myGLCD(6, 7, 8, 9); //запускаем LCD
extern uint8_t RusFont[];  //подключаем русский шрифт

#define light_pin 5 //пин подсветки LCD
#define LCD_ON HIGH //включение подсветки (HIGH для синих 5110, LOW для красных)

unsigned int balance = 45600;
unsigned int moneyBill = 5000;
unsigned int moneyCoin = 350;
String rej[4] = {"otlhsq", "yjhvf", ";flysq", "lfhjv"}; //режимы: щедрый, норма, жадный, даром

void setup() {
  pinMode (light_pin, OUTPUT);      //настраиваем порт подсветки внут. дисплея
  digitalWrite (light_pin, LCD_ON); //включаем подсветку
  myGLCD.InitLCD(55);          //запуск LCD контраст 65
  myGLCD.setFont(RusFont);   //устанавливаем русский шрифт
}


void loop() {

  myGLCD.print("D[jl&", LEFT, 0); //всего
  myGLCD.print("Cvtyf&", LEFT, 8); //смена
  myGLCD.print("Htcehc&", LEFT, 24); //ресурс
  myGLCD.print("Ht;bv&", LEFT, 32); //режим
  myGLCD.print(String(balance), RIGHT, 0); //всего
  myGLCD.print(String(moneyBill) + " " + String(moneyCoin), RIGHT, 8); //смена
  myGLCD.print(rej[0], RIGHT, 32); //режим
   
}

