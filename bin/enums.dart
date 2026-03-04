


void main(){

  final emp1 = Employee('Misha', EmploymentType.SWE);
  final emp2 = Employee('David', EmploymentType.FINANCE);
  print(emp1);
  print(emp2);

  emp1.typeFn();
  emp2.typeFn();


}

class Employee {

  final String _name;
  final EmploymentType _type;

  Employee(this._name, this._type);

  void typeFn(){
      switch(_type){
        case EmploymentType.SWE :
          print('Software Engineer ${_type.salary}');
        case EmploymentType.FINANCE :
          print('Finance ${_type.salary}');
        default :
          print('Ha Nigger');
      }
  }

  @override
  String toString() {
    return 'Employee{_name: $_name, _type: $_type}';
  }
}

enum EmploymentType {
  SWE(2000),
  FINANCE(4000),
  MARKETING(5000);

  final int salary;

  const EmploymentType(this.salary);

}
