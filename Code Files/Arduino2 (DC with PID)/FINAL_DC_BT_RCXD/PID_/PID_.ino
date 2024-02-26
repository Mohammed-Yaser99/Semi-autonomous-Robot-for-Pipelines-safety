#include <PID_v1.h>
#include <TimerOne.h>
#include <Wire.h>
 


//VARIABLES

int speed_R = 255;
int distance_F=0;
int distance_B=0;

int dis = 0;
char com;
int n =1;
int ON_F = 0;
int ON_B = 0;

char pi_state='a';

int enc1 = 2;
int enc2 = 3;

double R_pwmOutput = 0 ;
double R_SpeedRPM = 0.0;

double Setpoint = 140;

float R_Kp = 1.1, R_Ki = 4.8, R_Kd = 0.05;
//float R_Kp = 5, R_Ki = 30, R_Kd = 0.05;

volatile unsigned long counter1 = 0;

const float ppr = 400.0/10;



//HANDLES....................................................

PID R_rpm(&R_SpeedRPM, &R_pwmOutput, &Setpoint, R_Kp, R_Ki , R_Kd, DIRECT ) ;




//MACROS.....................................................

// Define Slave I2C Address
  #define SLAVE_ADDR 9
 
// Define Slave answer size
  #define ANSWERSIZE 5

#define DC_1_F 13 //forward=1
#define DC_1_B 12 //backward=1
#define DC_1_EN 11 



//FUNCTION PROTOTYPES........................................

void RC_F();
void RC_B();
void RC_STOP();
void int_timer();
void int_count1();
void receiveEvent();

void setup() {
  // put your setup code here, to run once:
  pinMode(DC_1_EN, OUTPUT);
  pinMode(DC_1_F, OUTPUT);
  pinMode(DC_1_B, OUTPUT);

  // Initialize I2C communications as Slave
  Wire.begin(SLAVE_ADDR);
   
  // Function to run when data received from master
  Wire.onReceive(receiveEvent);
  
  Serial.begin(9600);
  
 
  Timer1.initialize(100000);
      attachInterrupt(digitalPinToInterrupt(enc1),int_count1, RISING);
 
      R_rpm.SetMode(AUTOMATIC);
 
    
}


void loop() {
  // put your main code here, to run repeatedly:

  while(1)
  {
    Serial.print(" in loop \n");
    delay(2000);
    if (dis!=0)
    {
        Timer1.attachInterrupt(int_timer);
    break;
    }
  }
  
  delay(500);
 Serial.print("distance = ");
 Serial.println(dis);
 
if(com=='e' )
{
  
while(dis!=0)
{
  
 RC_B();
      distance_B--;
      delay(1000);
      if (distance_B ==0)
      {
        ON_B=0;
        RC_STOP();
        delay(5000);
       break;
    
      } 
}
}

 delay(2000);
 
  
if(dis != 0)
{
  ON_F=1;
  
  distance_F = dis;
  
  distance_B = distance_F;

  while ( ON_F == 1)
   {
    if(Serial.available() > 0)
  { 
      pi_state = Serial.read();
  }
   
      RC_F();
      distance_F--;
      
      Serial.print(" Forward\n");
      Serial.print(distance_F);
      
      delay(1000);
           
     if(pi_state=='q')
      {
        RC_F_SLOW();
        
        pi_state='a';
        
      }
        if (distance_F ==0)
        {
          // Timer1.detachInterrupt();
            RC_STOP();
          ON_F=0;
          ON_B=1;
        
           Serial.print(" REACHED DISTNATION \n");
          delay(5000);
          break;
      
        }

   }

    while ( ON_B == 1)
   {
   
      RC_B();
      distance_B--;

       Serial.print(" Backward\n");
      Serial.print(distance_B);
      
      delay(1000);
      if (distance_B ==0)
      {
        ON_B=0;
        // Timer1.detachInterrupt();
        RC_STOP();
        dis=0;
         Serial.print(" REACHED DISTNATION \n");
         dis=0;
        delay(5000);
        break;
    
      } 
}
}

}

//FUNCTIONS DEFINITION
//////////////////////////////////////////////////////

void RC_F()
{
  //analogWrite(DC_1_EN,speed_R);

   digitalWrite(DC_1_F,HIGH);
    digitalWrite(DC_1_B,LOW);
  
}

//////////////////////////////////////////////////////

void RC_F_SLOW()
{
   Setpoint = 50;
   delay(5000);
    Setpoint = 140;
  
}

//////////////////////////////////////////////////////

void RC_B()
{
  analogWrite(DC_1_EN,speed_R);

   digitalWrite(DC_1_B,HIGH);
   digitalWrite(DC_1_F,LOW);
  
}

//////////////////////////////////////////////////////

void RC_STOP()
{
   Timer1.detachInterrupt();
   digitalWrite(DC_1_B,LOW);
   digitalWrite(DC_1_F,LOW);
}

//////////////////////////////////////////////////////

void int_timer(){
  Timer1.detachInterrupt();
  R_SpeedRPM = (counter1/ppr)*60.0;
  R_rpm.Compute();
  analogWrite (DC_1_EN , R_pwmOutput );
  Serial.print("motor 1 speed : ");
  Serial.println(R_SpeedRPM);
  Serial.println(Setpoint);
  counter1 = 0;
 
  Timer1.attachInterrupt(int_timer);
}

//////////////////////////////////////////////////////

void int_count1(){
  counter1++;
}

//////////////////////////////////////////////////////


void receiveEvent() {
 
  // Read while data received
  while (0 < Wire.available()) {
    dis = Wire.read();
  }
  Serial.println("Receive event");
}
