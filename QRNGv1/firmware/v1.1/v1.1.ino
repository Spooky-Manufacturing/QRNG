/*      QRNGv1 Firmware V1.1
 * Author: Noah G. Wood
 * 
 * Copyright (c) 2019 Spooky Manufacturing, LLC
 * License: GPLv3.0
 * 
 */
int triggerPin = 2;
int hPin = A0;
int vPin = A1;
float H = 0;
float V = 0;
bool xtra = 0;

void setup() {
  // put your setup code here, to run once:
  pinMode(13, OUTPUT);
  pinMode(triggerPin, OUTPUT);
  Serial.begin(9600);

}

float angle() {
  float a = degrees(atan(V/H));
  return a;
}

void HGate() {
  digitalWrite(triggerPin, HIGH);
  digitalWrite(triggerPin, LOW);
  H = analogRead(hPin);
  V = analogRead(vPin);
}

int Rand() {
  HGate();
  if(H > V) {
    return 0;
  } if(H < V) {
    return 1;
  } else {
    Rand();
  }
}
void extra(){
  if(xtra){
    Serial.print("\nH: ");
    Serial.print(H);
    Serial.print("\nV: ");
    Serial.print(V);
    Serial.print('\n');
  }
}
void loop() {
  if(Serial.available()){
    char val = Serial.read();
    if(val == 'e') {
      if(xtra == 0){
        Serial.print(">Printing Extra Information\n");
        xtra=1;
      } else{
        Serial.print(">Not Printing Extra Information\n");
        xtra=0;
      }
    }
    if(val == 'h') {
      HGate();
      Serial.print(angle());
      Serial.print('\n');
      extra();
    }
    if(val == 'r') {
      Serial.print(Rand());
      Serial.print('\n');
      extra();
    }
    if(val == 't') {
      Serial.print("Success!\n");
    }
    if(val == 'v'){
      Serial.print("Version 1.1\n");
    }  }
}
