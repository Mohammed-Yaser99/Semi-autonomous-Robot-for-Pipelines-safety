#include <Stepper.h>
// Include Arduino Wire library for I2C
#include <Wire.h>
 

//VARIABLES
int speed_R = 255;
char dia  ;
char dis=0;
int distance_F = 0;
int distance_B = 0;
int ON_F = 0;
int ON_B = 0;
int state = 0;
const int stepsPerRevolution = 200;  // change this to fit the number of steps per revolution for your motor


//HANDLES....................................................

Stepper myStepper1(stepsPerRevolution,12,13); // initialize the stepper library on pins 8 through 11:
Stepper myStepper2(stepsPerRevolution, 8, 9, 10, 11); // initialize the stepper library on pins 8 through 11:
Stepper myStepper3(stepsPerRevolution, 8, 9, 10, 11); // initialize the stepper library on pins 8 through 11:



//MACROS.....................................................
// Define Slave I2C Address
  #define SLAVE_ADDR 9
 
// Define Slave answer size
  #define ANSWERSIZE 5


//FUNCTION PROTOTYPES........................................


void setup() {
  // put your setup code here, to run once:
  
// Initialize I2C communications as Master
  Wire.begin();
  
Serial.begin(9600);
    myStepper1.setSpeed(350);
    myStepper2.setSpeed(350);
    myStepper3.setSpeed(350);
    
}

int n =1;

void loop() {
  // put your main code here, to run repeatedly:
  Serial.println("Enter your standard Pipe diameter ");
  Serial.println("Enter The distance needed to be checked ");
  Serial.println("For Reentering data press 'e' ");
  while(1){
 if(Serial.available() > 0){ // Checks whether data is comming from the serial port

if(n==1){
 
 dia = Serial.read(); // Reads the data from the serial port

 Serial.print("diameter = ");
  Serial.println(dia);
n=2;

}

else if(n==2)
{
 dis = Serial.read(); // Reads the data from the serial port
  Serial.print("distance = ");
   Serial.println(dis - 48);
  
   break;
   
}

 }
 
  }

    
  delay(2000);
  
 if( dia == 'b')
 {
     Pipe_Dia_1() ;
     dia='a';
 }
 else if( dia =='c')
 {
     Pipe_Dia_2() ;
      dia='a';
 }
 else if( dia =='d')
 {
     Pipe_Dia_3() ;
      dia='a';
 }

 

 
 
 digitalWrite(3,HIGH);
}



//////////////////////////////////////////////////////

void Pipe_Dia_1()
{
  Serial.print("first dia STEPPER RUNNING");
 myStepper1.step(5000);
 
 
  if(dis!=0){
    // Write a charatre to the Slave
  Wire.beginTransmission(SLAVE_ADDR);
  Wire.write(dis - 48);
  Wire.endTransmission();
  }
}

//////////////////////////////////////////////////////

void Pipe_Dia_2()
{
   myStepper1.step(1500);
   myStepper2.step(1500);
 myStepper3.step(1500);
 Serial.print("second dia STEPPER RUNNING");
 delay(2000);
   
}

//////////////////////////////////////////////////////

void Pipe_Dia_3()
{
  Serial.print("third dia STEPPER RUNNING");
   myStepper1.step(1500);
   myStepper2.step(1500);
 myStepper3.step(1500);
}
