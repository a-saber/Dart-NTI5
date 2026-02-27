class User{
  int x = 5;
  late int age;
  

  int? z;
  String? name;
  void test(){
    x =  x+1;
    age = 20;
    age = age +5;

    // z = z;
    name = "John";
    z = name?.length;
    z = null;
    x = name!.length;
    // x = null;
    print(z);
  }
  void test2(){
    z = 10;
  }
}

void main(){
  User user = User();
  // user.test2();
  user.test();

  int x;
  x = 5;
  print(x+5);
}