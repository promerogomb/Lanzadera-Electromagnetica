// Define pin assignments
const int relayPin = 11;
const int sensor1Pin = 5;
const int sensor2Pin = 4;
const int buttonPin = 6;

// Variables to store the time when sensors go HIGH
unsigned long timeSensor1 = 0;
unsigned long timeSensor2 = 0;
bool sensor1HighDetected = false;

void setup() {
  // Initialize the serial communication
  Serial.begin(9600);

  // Set pin modes
  pinMode(relayPin, OUTPUT);
  pinMode(sensor1Pin, INPUT);
  pinMode(sensor2Pin, INPUT);
  pinMode(buttonPin, INPUT_PULLUP); // Assuming button is active LOW with pull-up

  digitalWrite(relayPin, LOW); // Ensure relay is off initially
}

void loop() {
  // Check if the button is pressed
  if (digitalRead(buttonPin) == LOW) { // Button press detected
    digitalWrite(relayPin, HIGH);
    int timeOn = millis();// Turn on the relay
    sensor1HighDetected = false;  // Reset the flag for sensor 1 detection
    timeSensor1 = 0;  // Reset sensor 1 time
    timeSensor2 = 0;  // Reset sensor 2 time

    // Wait for sensor 1 to go high
    while (!sensor1HighDetected) {
      if (digitalRead(sensor1Pin) == HIGH) {
        timeSensor1 = millis();       // Record the time sensor 1 went high
        sensor1HighDetected = true;   // Set the flag true to exit the loop
      }
    }

    digitalWrite(relayPin, LOW);
    int timeOff = millis();// Turn off the relay after sensor 1 is triggered

    // Wait for sensor 2 to go high
    while (timeSensor2 == 0) {
      if (digitalRead(sensor2Pin) == HIGH) {
        timeSensor2 = millis();   // Record the time sensor 2 went high
      }
    }

    // Calculate the time difference between the two sensor signals
    unsigned long timeDifference = timeSensor2 - timeSensor1;
    unsigned long currentTime = timeOff - timeOn;

    // Print the time difference
    Serial.println("Time difference between sensors: ");
    Serial.println(timeDifference);
    Serial.println(" milliseconds.");
    Serial.println("The current was supplied to the coil for: ");
    Serial.println(currentTime);
    Serial.println(" milliseconds.");

    // Delay to avoid repeated triggering and to debounce the button
    delay(500);  // Adjust the delay based on your specific needs
  }
}
