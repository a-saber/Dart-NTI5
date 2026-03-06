import 'inherit.dart';
void main(){

}
class TestAnimal extends Animal{
  TestAnimal(super.name, super.age, super.country);
  void test(){
    // _test = 30;
  }
}
class User{
  String? name;
  int? _age;

  User({this.name});
  bool setAge(int age){
    bool setSuccess = false;
    if(age > 0){
      _age = age;
      setSuccess = true;
    }
    return setSuccess;
  } 

  set age(int age){
    if(age > 0){
      _age = age;
    }
  }

  int? getAge() => _age;

  // getter
  int get age => _age ?? 0;

  // using setter and getter
}

