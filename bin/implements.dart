
void main(){



}

class Vehicle {
  int speed = 10;
  bool isEngineWorking = false ;
  bool isLightOn = true;

  void turnOnAnEngine(){
    isEngineWorking = true;
    print('Start an engine');
  }

}


class Car implements Vehicle{

  int numOfWheels = 4;

  @override
  bool isEngineWorking = false;

  @override
  bool isLightOn = true;

  @override
  int speed = 10;

  @override
  void turnOnAnEngine() {
    isEngineWorking = true;
    print('Starting Car engine');
  }

}


abstract class VehicleTwo {
    void accelerate();
}


class CarTwo implements VehicleTwo {

  int gaz = 3;
  int _wheels = 4;

  @override
  void accelerate() {
    print('Pushing pedal!');
  }


}

