
// booked => true
// empty => false
import 'dart:io';

void main(){
  List<List<bool>> seats = List.generate(5, (int index)=> List.filled(5, false));
  Map<List<int>, Map<String, String>> bookings = {};
  print("Enter row number");
  int row = userInput<int>(validateSeat);
  print(row);
  print("Enter rclient name");
  String name = userInput<String>((String input)=> input.isNotEmpty ? input: null);
  print(name);
  // bool flag = true;
  // while(flag){
  //   displayOptions();
  //   int choice = userInput((int choice)=> choice >= 1 && choice <= 4);
  //   switch(choice){
  //     case 1:
  //       displaySeats(seats);
  //     case 2:
  //       newBook(seats, bookings);
  //     case 3:
  //       displayBookings(bookings);
  //     case 4:
  //       flag = false;
  //     default:
  //       print("Invalid choice");
  //   }
  // }
 
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
  int row = userInput<int>(validateSeat);
  print(row);
}
int? validateSeat(String input){
  int? seatNumber = int.tryParse(input);
  if(seatNumber != null){
    if(seatNumber >= 1 && seatNumber <= 5){
      return seatNumber;
    }
  }
  return null;
}
T userInput<T>(T? Function(String input) validator){
  while(true){
    String input = stdin.readLineSync()??"";
    T? result = validator(input);
    if(result != null){
      return result;
    } 
  } 
}