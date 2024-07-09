// Asignación de pines
const int relayPin = 11;
const int sensor1Pin = 5;
const int sensor2Pin = 4;
const int buttonPin = 6;

// Variables de control de tiempo
unsigned long timeSensor1 = 0;
unsigned long timeSensor2 = 0;
bool sensor1HighDetected = false;
    
void setup() {
  Serial.begin(9600);

  // Modos de los pines
  pinMode(relayPin, OUTPUT);
  pinMode(sensor1Pin, INPUT);
  pinMode(sensor2Pin, INPUT);
  pinMode(buttonPin, INPUT_PULLUP);

  digitalWrite(relayPin, LOW);
}
    
void loop() {
  // Comprobación de pulsación del botón
  if (digitalRead(buttonPin) == LOW) { // Condición de pulsación
    digitalWrite(relayPin, HIGH); // Activación del relé
    int timeOn = millis(); // Tiempo de inicio de alimentación
    // Reinicio de variables
    sensor1HighDetected = false;  
    timeSensor1 = 0;
    timeSensor2 = 0;

    // Esperamos a que el sensor a la salida de la bobina detecte el vástago
    while (!sensor1HighDetected) {
      if (digitalRead(sensor1Pin) == HIGH) {
        timeSensor1 = millis();       // Valor temporal
        sensor1HighDetected = true;
      }
    }

    digitalWrite(relayPin, LOW); // Apagamos el relé
    int timeOff = millis(); // Tiempo de corte de alimentación

    // Esperamos a que el segundo sensor detecte el vástago
    while (timeSensor2 == 0) {
      if (digitalRead(sensor2Pin) == HIGH) {
        timeSensor2 = millis();   // Valor temporal
      }
    }

    // Calculamos las diferencias temporales
    unsigned long timeDifference = timeSensor2 - timeSensor1; // Intervalo de tiempo para la velocidad
    unsigned long currentTime = timeOff - timeOn; // Intervalo de tiempo de alimentación

    // Mostramos los valores en el terminal
    Serial.println("Diferencia de tiempo de medición: ");
    Serial.println(timeDifference);
    Serial.println(" milisegundos.");
    Serial.println("La bobina ha estado alimentada por: ");
    Serial.println(currentTime);
    Serial.println(" milisegundos.");

    delay(500);
  }
}