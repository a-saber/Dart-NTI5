void main(){
  int hours = 6;
  bool isWeekEnd = true;
  int cost = 0;
  if( hours >=3  && hours <= 5){
    cost =  (hours-2) * 10;
  }
  else if (hours > 5){
    cost += 30;
    cost += (hours - 5) * 20;
  }

  // if(isWeekEnd){
  //   cost += 50;
  // }

  // print("cost is ${isWeekEnd ? (cost+50) : cost}");
  print("cost is ${
    (hours >=3  && hours <= 5)? 
    ((hours-2) * 10): 
    (hours > 5)? 
    ((hours - 5) * 20)+30 :
     0
    }");


}