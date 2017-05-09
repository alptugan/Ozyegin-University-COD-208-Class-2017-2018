import processing.serial.*;

Serial myPort;  // Create object from Serial class
int val;        // Data received from the serial port
int[] serialInArray = new int[3]; 
Boolean firstContact;
int serialCount = 0;

int red, green, blue;
byte [] arr = {2, 3, 4};
void setup() 
{
  size(200, 200);

  //println(Serial.list());
  String portName = Serial.list()[1];
   myPort = new Serial(this, portName, 9600);
   myPort.bufferUntil('\n');
 
}

void draw() {
  background(255);


  //println("c : " +  c);

  //println(myPort.read());
  //println("value 1: " + val); 
  if(myPort.available() > 1) {
  int inByte = myPort.read();
  serialInArray[serialCount] = inByte;
  serialCount++;

  // If we have 3 bytes:
  if (serialCount > 2 ) {
    red = serialInArray[0];
    green = serialInArray[1];
    blue = serialInArray[2];

    // print the values (for debugging purposes only):
    //println(red + "\t" + green + "\t" + blue);
    println("red : " + red);
    println("green : " + green);
    println("blue : " + blue);
    // Reset serialCount:
    serialCount = 0;
  }
  }
  //myPort.write(2);
  //myPort.write(2);
  //myPort.write(3);
  //myPort.write(4);
}

/**********************************************************************
****************************ARDUINO CODE*******************************
**********************************************************************
char val; // Data received from the serial port
int ledPin = 13; // Set the pin to digital I/O 4

uint8_t vals[3] = {10, 20, 99};
int  counter = 0;
int inByte = 0;         // incoming serial byte

void setup() {

  pinMode(ledPin, OUTPUT); // Set pin as OUTPUT
  Serial.begin(9600); // Start serial communication at 9600 bps
  // establishContact();  // send a byte to establish contact until receiver responds
}

void loop() {
    
    //Serial.write(10);
    //delay(10);
    //Serial.write(20);
    //delay(10);
    //Serial.write(30);


    Serial.write(vals,sizeof(vals));
    delay(5); // Wait 100 milliseconds for next reading
}

void establishContact() {
  while (Serial.available() <= 0) {
    Serial.print('A');   // send a capital A
    delay(300);
  }
}

*/