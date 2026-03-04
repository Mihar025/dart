


void main(){

  final dog = Dog();
  dog.pawsCount();

}


mixin Animal {
  int paws = 4;
}


mixin Bark {
  bool isBarking = false;
}

class Dog with Animal, Bark{

  void pawsCount(){
    print(paws);
    print(isBarking);
  }

}