

void main (){

  /*
    1. Polymorphism
    2. Abstraction
    3. Inheritance
    4. Encapsulation
   */


  // 1. Polymorphism
      Animal cat = Cat();
      cat.sound();
      cat = Dog();
      cat.sound();

   // 2. Abstraction

  AnimalAbstract catAbs = CatTwo();
  catAbs.sound();

  AnimalAbstract dogAbs = DogTwo();
  dogAbs.sound();

  // 4. Encapsulation

}


class Person {

  String _firstName;
  int _age;

  Person(this._firstName, this._age);


  String get firstName => _firstName;
  int get age => _age;
}




abstract class AnimalAbstract {
  void sound();
}

class CatTwo extends AnimalAbstract {
  @override
  void sound() {
    print('Myua!');
  }

}

class DogTwo extends AnimalAbstract{
  @override
  void sound() {
      print('Bark');
  }

}


class Animal{
  void sound(){
    print('Animal making sound');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('Dog barking');
  }
}

class Cat extends Animal {

  @override
  void sound() {
    print('Cat making sound');
  }
}


