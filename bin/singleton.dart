class Group{
  String? name;
  Group._private();
  static final Group _instance = Group._private();

  factory Group(){
    return _instance;
  }
}

class AppColors{

  static String priamryColor = 'red';
  static String secondaryColor = 'blue';
  static String tertiaryColor = 'green';


}