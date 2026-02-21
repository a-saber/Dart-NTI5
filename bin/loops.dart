void main(){
  int start = 0;
  int end = 10;
  int sum = 0;
  int evenCount = 0;
  int oddCount = 0;
  for(int i =start; i<= end; i++){
    print(i);
    sum = sum +i;
    if(i.isEven){
      evenCount++;
    }
    else{
      oddCount++;
    }
  }
  print("sum is $sum");
  print("even count is $evenCount");
  print("odd count is $oddCount");


  for(int i =0; i< 5; i++){
    String x = '';
    for(int j =0; j<= i; j++){
      x += '*';
    }
    print(x);
  }
  for(int i =0; i< 5; i++){
    print( '*' * i);
  }


}