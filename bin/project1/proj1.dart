

void main() async{

  var w1 = Worker('Misha', 'Ivanov', 'BuildCo', 45, 25, Role.FOREMAN);
  var w2 = Worker('John', 'Smith', 'BuildCo', 38, 20, Role.ELECTRICIAN);
  var w3 = Worker('David', 'Brown', 'BuildCo', 50, 15, Role.LABORER);

  CrewList<Worker> crew = CrewList();
  crew.add(w1);
  crew.add(w2);
  crew.add(w3);

  HourlyPayCalculator calculator = HourlyPayCalculator();
  for(var w in crew.getAll()){
    calculator.calculate(w);
  }

  w1.hasCert = true;
  w1.getCetified();
  w2.getCetified();

  print(getStatusMessage(OnSite()));
  print(getStatusMessage(OnBreak()));
  print(getStatusMessage(Absent('Sick')));

  var summary = getCrewSummary(crew);
  print('Total workers: ${summary.totalWorkers}');
  print('Total payroll: ${summary.totalPayroll}');

  await for( var event in siteLog()){
    print(event);
  }

}



enum Role {
  FOREMAN(1000.0, 1.5),
  LABORER(300.0, 1.5),
  ELECTRICIAN(500.0, 1.5);

  final double salary;
  final double overtimeRate;

  const Role(this.salary, this.overtimeRate);
}

mixin SafetyCertified {
  bool hasCert = false;
  void getCetified (){
    if(hasCert){
      print('Worker is certified');
    }
    else {
      print('Worker is not certified');
    }
  }
}


class Worker with SafetyCertified{

  String? _firstName;
  String? _lastName;
  String? _companyName;
  int? _hoursWorked;
  int? _baseHourlyRate;
  Role _role;


  int? get hoursWorked => _hoursWorked;

  Worker(this._firstName,
      this._lastName,
      this._companyName,
      this._hoursWorked,
      this._baseHourlyRate,
      this._role);

  int? get baseHourlyRate => _baseHourlyRate;
  String? get companyName => _companyName;

  set companyName(String value) {
    _companyName = value;
  }

  String? get lastName => _lastName;

  set lastName(String value) {
    _lastName = value;
  }

  Role get role => _role;

  String? get firstName => _firstName;

  set firstName(String value) {
    _firstName = value;
  }
}

class CrewList<T> {

  List<T> _items = [];

  void add(T item){
    _items.add(item);
  }

  List<T> getAll (){
    return _items;
  }
}

sealed class WorkStatus{}

class OnSite extends WorkStatus{}
class OnBreak extends WorkStatus {}

class Absent extends WorkStatus {
  final String reason;
  Absent( this.reason);
}

String getStatusMessage (WorkStatus workStatus){
  return switch (workStatus){
     OnSite() => "On Site",
  OnBreak() => 'On Break',
  Absent(reason: var r) => 'Absent: ${r}',
  };
}

Stream<String> siteLog() async* {
  List<String> events = ['Worker Arrived', 'Worker Left', ' Break Starts', 'Day Ended'];
  for(var event in events){
    await Future.delayed(Duration(seconds: 2));
    yield event;
  }
}

({int totalWorkers, double totalPayroll}) getCrewSummary(CrewList<Worker> crew){
  var workers = crew.getAll();
  double total = 0;
  for(var w in workers){
    total += (w.baseHourlyRate ?? 0) * (w.hoursWorked ?? 0);
  }
  return (totalWorkers: workers.length, totalPayroll: total);
}

abstract class PayCalculator{
    void calculate(Worker worker);
}

class HourlyPayCalculator implements PayCalculator{
  @override
  void calculate(Worker worker) {
    try{
      calculateSalary(worker);
    } catch (e){
      print('Error occurred ${e}');
    }

  }

}


  void calculateSalary(Worker worker){

    Role role = worker.role;
    int baseHourlyRate = worker.baseHourlyRate ?? 0;
    int hoursWorker = worker.hoursWorked ?? 0;
    double overTimeRate = worker.role.overtimeRate ?? 0.0;

    switch(role){
      case Role.ELECTRICIAN:
        double result = countSalary(worker, baseHourlyRate, hoursWorker, overTimeRate);
        print(result);
      case Role.FOREMAN :
        double result = countSalary(worker, baseHourlyRate, hoursWorker, overTimeRate);
      print(result);
      case Role.LABORER :
        double result = countSalary(worker, baseHourlyRate, hoursWorker, overTimeRate);
        print(result);
    }
  }




  double countSalary(Worker worker, int baseHourlyRate, int hoursWorked, double overtimeRate ){
    int hoursWorkedRegular = 0;
    int overTimeHours = 0;

    if(hoursWorked > 40){
      overTimeHours = hoursWorked - 40;
      hoursWorkedRegular = 40;

      double result = (baseHourlyRate * hoursWorkedRegular) + (baseHourlyRate * overtimeRate * overTimeHours);
      print("${worker.firstName} ${worker.lastName} : Salary: ${result}");
      return result;
    }
    else {
      int calc = baseHourlyRate * hoursWorked;
      double result = calc.toDouble();
      print("${worker.firstName} ${worker.lastName} : Salary: ${result}");
      return result;
    }
  }

