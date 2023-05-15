class Car {
  String brand;
  String model;
  int year;
  double milesDriven = 0.0;
  static int numberOfCars = 0;

  Car(this.brand, this.model, this.year) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    final now = DateTime.now();
    return now.year - year;
  }
}

void main() {
  final car1 = Car('Toyota', 'Corolla', 2010);
  car1.drive(10000.0);

  final car2 = Car('Honda', 'Civic', 2015);
  car2.drive(5000.0);

  final car3 = Car('Ford', 'Mustang', 2020);
  car3.drive(2000.0);

  print('Car 1: ${car1.getBrand()} ${car1.getModel()} ${car1.getYear()} '
      '(${car1.getAge()} years old) - ${car1.getMilesDriven()} miles driven');
  print('Car 2: ${car2.getBrand()} ${car2.getModel()} ${car2.getYear()} '
      '(${car2.getAge()} years old) - ${car2.getMilesDriven()} miles driven');
  print('Car 3: ${car3.getBrand()} ${car3.getModel()} ${car3.getYear()} '
      '(${car3.getAge()} years old) - ${car3.getMilesDriven()} miles driven');

  print('Number of cars created: ${Car.numberOfCars}');
}
