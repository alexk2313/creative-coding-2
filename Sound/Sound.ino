int notes[] = {262,294,330,349};


void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(3,OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  pinMode(2, OUTPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  int keyVal = analogRead(A0);
  Serial.println(keyVal);
  if(keyVal == 1023){
    tone(8, notes[0]);
    digitalWrite(2, HIGH);
    digitalWrite(3, LOW);
    digitalWrite(4, LOW);
    digitalWrite(5, LOW);
  }
  else if(keyVal >= 990 && keyVal <= 1010){
    tone(8, notes[1]);
    digitalWrite(2, LOW);
    digitalWrite(3, HIGH);
    digitalWrite(4, LOW);
    digitalWrite(5, LOW);
  }
  else if(keyVal >= 505 && keyVal <= 515){
    tone(8, notes[2]);
    digitalWrite(2, LOW);
    digitalWrite(3, LOW);
    digitalWrite(4, HIGH);
    digitalWrite(5, LOW);
  }
  else if(keyVal >= 5 && keyVal <= 110){
    tone(8, notes[3]);
    digitalWrite(2, LOW);
    digitalWrite(3, LOW);
    digitalWrite(4, LOW);
    digitalWrite(5, HIGH);
  }
  else{
    noTone(8);
    }
}
