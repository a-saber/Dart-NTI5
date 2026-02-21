
// booked => true
// empty => false
import 'dart:io';

void main(){
  List<List<bool>> seats = List.generate(5, (int index)=> List.filled(5, false));
  Map<List<int>, Map<String, String>> bookings = {};

  bool flag = true;
  while(flag){
    displayOptions();
    int choice = userInput();
    switch(choice){
      case 1:
        displaySeats();
      case 2:
        newBook();
      case 3:
        displayBookings();
      case 4:
        flag = false;
      default:
        print("Invalid choice");
    }
  }
 
}
int userInput(){
  return int.parse(stdin.readLineSync()!);
}