//A class called Employee, which models an employee with an ID, name and salary,
//is designed as shown in the following class diagram.
//The method raiseSalary(percent) increases the salary by the given percentage. Write the Employee clas

void main() {
  Employee obj = Employee(00002, 50000, 'karthika', 'karunakran');
  obj.salary;
  obj.ID;
  obj.firstName;
  obj.lastName;
  //print(obj.raiseSalary);
  print(obj.toString());
}

class Employee {
  //instance variable
  int? ID;
  int? salary;
  String? firstName;
  String? lastName;

  Employee(
    int? ID,
    int? salary,
    String? firstName,
    String? lastName,
  ) {
    this.ID = ID;
    this.firstName = firstName;
    this.lastName = lastName;
    this.salary = salary;
  }

  int? get getID => ID;
  String? get getLastName => lastName;
  String? get getFirstName => firstName;
  int? get getSalary => salary;
  String? get getName => "$firstName $lastName";

  int get getAnnualSalary => 12 * salary!;

  get raiseSalary {
    int increamentedSalary = (100 * (getAnnualSalary * 30)) ~/ getAnnualSalary;
    return increamentedSalary;
  }

  @override
  String toString() {
    return "Employee[id:$ID,name:$firstName $lastName,salary:$salary]";
  }
}
