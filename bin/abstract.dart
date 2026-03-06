 class Animal{
  void display(){
    
  }
  void makeSound(){
    print('Animal is making sound');
  }
}

class Cat implements Animal{
  @override
  void display() => print('Cat is making sound');

  @override
  void makeSound() => print('Cat is making sound');
}

