
void main(){

  Car car = Car();
  car.printSomething();

  Truck truck = Truck();
  truck.printEngineCapacity();

  Vehicle vehicle = Car();

  print((vehicle as Car).numOfWheels);


}

class Vehicle {
    int speed = 10;
    bool isEngineWorking = false ;
    bool isLightOn = true;

    void accelerate() {
      speed += 10;
    }
}


class Car extends Vehicle{

  int numOfWheels = 4;

  void printSomething(){
    print(numOfWheels);
  }

  void callFuncFromVEchicle(){
    super.speed = 20;
    super.accelerate();
  }

}

class Truck extends Vehicle {

  int engineCapacity = 2;

  void printEngineCapacity(){
    print(engineCapacity);
  }

}