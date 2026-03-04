


import 'dart:math';

void main(){
  //This list is DYNAMIC TYPE!
  List list = [10,20,30, 'String', true];
  print(list);
  print(list[1]);

  //For create strict tipization list we gotta use angle brackets
  List<int> grades = [10,20,30];
  List<String> names = ['Misha', 'Daniel'];
  List<bool> trueOrFalse = [true, false, false];

  final student = Student<String>('Misha', 20);
  print(student.name);

  List<Student> students = [
    Student('Misha', 20),
    Student('John', 10),
    Student('Sonal', 4)
  ];

    Map<String, int> grad = {
      'Misha' : 20,
      'gross' : 40
    };

}

class Student<T> {

      final T name;
      int marks;

      Student(this.name, this.marks);

      @override
      String toString() {
        return 'Student{name: $name, marks: $marks}';
      }


}