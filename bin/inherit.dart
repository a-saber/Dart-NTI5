class Person{
  String? name;
  int? age;
  
  Person(this.name,  this.age);

  void display(){
    print("from Person class Name: $name");
    print("from Person class Age: ${age ?? "Unknown"}");
  }
}
class Student extends Person{
  String? grade;
  Student({ String? name, int? age, this.grade}): super( name, age);

  void display(){
    print("Name: $name");
    print("Age: ${age ?? "Unknown"}");
    print("Grade: ${grade ?? "Unknown"}");
  }
}

class Employee extends Person{
  String? objective;
  Employee(String? name, int? age, this.objective): super( name, age);
  @override
  void display(){
    // super.display();
    print('objective: ${objective ?? "Unknown"}');
  }
}

class HealthEmployee extends Employee {
  String? healthObjective;
  HealthEmployee(this.healthObjective, super.name, super.age, super.objective);

  @override
  void display(){
    print('healthObjective: ${healthObjective ?? "Unknown"}');
    super.display();
  }
}




void welcome(Employee emp){
  print('welcome ${emp.name ?? "Unknown"}');
}
void main(){
  Person p1 = Person('ahmed', 30);

  Student s1 = Student(name: 'student 1', age :15, grade: 'A');
  Student s2 = s1;
  s2.grade = 'B';
  print(s2 == s1);
  print(s1.grade);
  print(s2.grade);


  // Student s1 = Student(grade: 'A', age :15, name: 'student 1');
  // s1.display();

  // HealthEmployee he1 = HealthEmployee("Health Objective 1", "Employee 1", 30, "Objective 1");
  // he1.display();

  // Pet p1 = Pet("Animal 1", petVariable1: "Pet 1", petVariable2: "Pet 2", 10,  "Country 1");
  // p1.makeSound();

}
class Animal{
  int? _test;
  String? name;
  int? age;
  String? country;
  Animal(this.name, this.age, this.country);
  void makeSound(){
    print("Animal is making sound");
  }
}

class Pet extends Animal{
  String? petVariable1;
  String? petVariable2;
  Pet(super.name, super.age, super.country, {this.petVariable1, this.petVariable2, });

  @override
  void makeSound(){
    print("Pet is making sound");
  }
}
class Cat extends Pet{
  String? catVariable;
  Cat(super.name, super.age, super.country, {this.catVariable, super.petVariable1, super.petVariable2, });
  @override
  void makeSound(){
    print("Cat is making sound");
  }
}
class Wild extends Animal{
  String? wildVariable1;
  Wild(super.name, super.age, super.country,{this.wildVariable1, });

  @override
  void makeSound(){
    print("Wild animal is making sound");
  }
}
class Lion extends Wild{
  String? lionVariable;
  Lion(super.name, super.age, super.country,{this.lionVariable, super.wildVariable1});
  @override
  void makeSound(){
    print("Lion is making sound");
  }
}

class Dog extends Pet{
  String? dogVariable;
  Dog(super.name, super.age, super.country,{this.dogVariable, super.petVariable1, super.petVariable2,});
  @override
  void makeSound(){
    print("Dog is making sound");
  }
}


// Animal 
// name
// age
// country
// makeSound() // animal is making sound
// PetAnimal
// petVariable
// Cat
// catVariable
// Dog
// dogVariable
// WhildAnimal
// whildVariable
// Lion
// Lionvariable
// Tiger
// TigerVariable
