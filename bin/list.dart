void main(){
  
  // List z = List.filled(10, 1);
  // print(z);
  // List y = List.generate(10, (int index) {return index;});
  // print(y);

  // List<int> x = [1,2,3];
  // x[x.length-1] = 4;
  // x[0] = 5;
  // print(x);
  // int value = 0;
  // print(x.removeAt(value));
  // print(x.contains(3));
  // x =  x.map((int element){
  //   return element * 2;
  // }).toList();
  // print(x);

  List<int> x = [1,2,3,4,5,6,7,8,9];
  print(x.where(test1));


  x.map(transform);

}
//bool Function(int) test 
bool test1(int element){
  return element >5;
}

int transform(int element){
  return element * 2;
}