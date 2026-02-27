
// booked => true
// empty => false
import 'dart:io';

void main(){
  List<List<bool>> seats = List.generate(5, (int index)=> List.filled(5, false));
  Map<List<int>, Map<String, String>> bookings = {};

  bool flag = true;
  while(flag){
    displayOptions();
    int choice = userInput((int choice)=> choice >= 1 && choice <= 4);
    switch(choice){
      case 1:
        displaySeats(seats);
      case 2:
        newBook(seats, bookings);
      case 3:
        displayBookings(bookings);
      case 4:
        flag = false;
      default:
        print("Invalid choice");
    }
  }
 
}
void displayOptions(){
  print('Enter Choice 1. Display Seats 2. Book Seat 3. Display Bookings 4. Exit');
}
void displaySeats(List<List<bool>> seats){
  for(int i =0; i< seats.length; i++){
    for(int j =0; j< seats[i].length; j++){
      if(seats[i][j]){
        stdout.write("B ");
      }
      else{
        stdout.write("E ");
      }
    }
    print("");
  }
}
void displayBookings(Map<List<int>, Map<String, String>> bookings){
  bookings.forEach((key, value) {
    print("Seat: ${key[0]+1}, ${key[1]+1} Name: ${value['name']} Phone: ${value['phone']}");
  });
}
void newBook(List<List<bool>> seats, Map<List<int>, Map<String, String>> bookings){
  print("Enter row number");
  int row = userInput(validateSeat);
  int col = userInput(validateSeat);
}
bool validateSeat(int choice)=> choice >= 1 && choice <= 5;
int userInput(bool Function(int choice) validator){
  while(true){
    String input = stdin.readLineSync()??"";
    int? choice = int.tryParse(input);
    if(choice != null){
      bool validateResult = validator(choice);
      if(validateResult){
        return choice;
      }
    } 
  } 
}