



void main(){


  String name = getAgeAndName().$2;
  int age = getAgeAndName().$1;
 // print('Name is: ${name}');
//  print('Age is: ${age}');
 // printName(name: name, age: age, active: true);
 // printName2();
  final stuff = getAN();
  print(stuff.age);
  print(stuff.name);


}
void printName2(String? name, int? age){
  print('${name} ${age}');
}


({int age, String  name}) getAN(){
  return (age: 12, name: 'Misha');
}


void printName({required String name, required int age, required bool active}){
  print('Name: ${name}, Age: ${age}, Active: ${active}');
}



String getName(){
  String name = 'Misha';
  return name;
}

(int, String) getAgeAndName(){
  String name = 'Misja';
  int age = 20;
  return (age, name);
}