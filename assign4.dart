import 'dart:io';

// Define an interface
abstract class Vehicle {
  void accelerate();
  void brake();
}

// Define a base class
class Car implements Vehicle {
  String make;
  String model;
  int year;

  Car(this.make, this.model, this.year);

  void accelerate() {
    print('Car is accelerating');
  }

  void brake() {
    print('Car is braking');
  }

  void displayInfo() {
    print('Make: $make, Model: $model, Year: $year');
  }
}

// Define a subclass that overrides a method
class ElectricCar extends Car {
  ElectricCar(String make, String model, int year) : super(make, model, year);

  @override
  void accelerate() {
    print('Electric car is accelerating silently');
  }
}

// Read data from a file and initialize an instance of a class
Car readCarDataFromFile(String filePath) {
  final file = File(filePath);
  final lines = file.readAsLinesSync();
  final carInfo = lines[0].split(',');

  final make = carInfo[0];
  final model = carInfo[1];
  final year = int.parse(carInfo[2]);

  return Car(make, model, year);
}

// Method demonstrating the use of a loop
void printNumbers(int n) {
  for (int i = 1; i <= n; i++) {
    print(i);
  }
}

void main() {
  // Create an instance of a class initialized with data from a file
  final car = readCarDataFromFile('car_data.txt');
  car.displayInfo();

  // Demonstrate method overriding
  final electricCar = ElectricCar('Tesla', 'Model S', 2022);
  electricCar.accelerate();

  // Demonstrate the use of a loop
  printNumbers(5);
}
