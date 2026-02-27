class Book {
  late String name;
  String? author;
  late double price;
  String? category; 

  Book({ required this.name, this.author, this.price =0});
  Book.catA({ required this.name, this.author}){
    category = "A";
    price = 100;
  }

  void display(){
    print("Name: $name");
    print("Author: ${author ?? "Unknown"}");
    print("Price: $price");
    print("Category: ${category ?? "Unknown"}");
  }
}

void main(){
  Book b1 = Book.catA( name: 'book 1' );
  Book b2 = Book.catA(name: 'book 2');
  b2 = b1;
  b1.name = "book 3";
  b2.name = "book 4";
  print(b1 == b2);
  print(b1.name );
  print(b2.name );

  // b1.display();
  // b2.display();
}