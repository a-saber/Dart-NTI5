void main() async{

  int x = 5;
  await Future.delayed(Duration(seconds: 1), (){
    x++;
  });
  print(x);
}