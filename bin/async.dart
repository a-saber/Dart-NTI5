import 'singleton.dart';
void main() async{

  Group g1 = Group();
  Group g2 = Group();
  print(g2 == g1);

  
  AppColors.priamryColor;
  // int x = 5;
  // await Future.delayed(Duration(seconds: 1), (){
  //   x++;
  // });
  // print(x);
}