// This is our Dart intro file

main() {
  /*************************
  how to print
  *************************/
  print("Hello");
  print("\nHi"); // this add a newline before the print

  /*************************
  variables
  *************************/
  // define and assign the variable name the string value Sandra
  var name = "Sandra";

  // define a variable
  var name2;

  // print the variables name & name2
  print("\nName: ${name}");
  print(name2);

  // re-assigning a variable
  name = "Alessandra";
  print("\nName: ${name}");

  // Final & Const variables
  const int birthYear = 1996;
  // birthYear = 2000; // this will not work - cannot reassign const/final
  print("BirthYear: ${birthYear}");

  /* 
  you can define variables in dart a couple different ways
  1) by thier data type: int, String, bool
  2) using the keyword var (the type of the variable will be automatially inferred) 
  */
  var example1 = "Hi";
  String example2 = "Hi";

  /*************************
  Data types
  *************************/
  int number = 2;
  double cost = 12.50;
  bool isSnowing = false;
  String fullName = "Alessandra Laudando";

  // we will get to these later
  List<int> list = [1, 2, 3];
  Set<int> set = {1, 2, 3};
  Map<String, int> map = {
    "age": 19,
    "birthYear": 2001,
  };

  /*************************
  how to print out numbers
  *************************/
  print(number);

  // numbers are automatically converted to a string using this method
  print("My number is: ${number}");

  // numbers are not automatically converted to a string when using the + concatenation method
  print("My number is: " + number.toString());

  /*************************
  Lists (array) & Sets
  *************************/
  // lists are indexed starting at 0: [0, 1, 2, 3]
  List<String> alphabet = ['a', 'b', 'c', 'd'];
  print("\nAlphabet: ${alphabet}");

  String a = alphabet[0]; // get a specific element from array by index
  String b = alphabet[1];
  print("Get a: ${a}");
  print("Get b: ${b}");

  // you can also have a list of dynamic elements (different types)
  var randomList = ['sandra', 2, true];

  List<String> thanksGivingGroceryList = [
    "Turkey",
    "potatoes",
    "pasta",
    "PIE",
    "Biscuits",
    "Cranberry Sauce"
  ];

  print("\nGrocery List: ${thanksGivingGroceryList}");
  print("DON'T FOGET THE: ${thanksGivingGroceryList[0]}");

  // some list attributes and methods
  int numberOfItems = thanksGivingGroceryList.length;
  print("Number of grocery items: ${numberOfItems}");

  thanksGivingGroceryList.add("Ice Cream");
  thanksGivingGroceryList.remove("Ice Cream");
  thanksGivingGroceryList.removeAt(0);
  print("\nGrocery List: ${thanksGivingGroceryList}");

  // a Set is exactly like a list but only contains unique values and uses {} instead of []
  //var set1 = {1, 2, 3, 4, 4}; // WRONG - not unique
  var set2 = {1, 2, 3, 4}; // CORRECT

  /*************************
  Maps
  *************************/
  var whatIAteToday = {
    'breakfast': 'eggs',
    'lunch': 'chicken',
    'dinner': 'steak',
  };

  print(whatIAteToday);
  String breakfast = whatIAteToday['breakfast'];

  whatIAteToday['breakfast'] = 'omlet';
  print("Breakfast: ${breakfast}");
  print(whatIAteToday);

  var userData = {
    'name': 'Alessandra Laudando',
    'height': '5" 1',
    'favoriteColor': 'blue',
    'age': 24,
  };
  print(userData);
  print("Alessandra's favorite color is ${userData['favoriteColor']}");

  /*************************
  Functions
  *************************/
  String getName() {
    return "Sandra";
  }
  // this is wrong - the function is not returning a string
  // String getName() {
  //   print("Sandra");
  // }

  getName();

  // parameters
  void addUser1(String firstName, int id) {
    print("first name: ${firstName}");
    print("ID: ${id}");
  }

  addUser1(
      "Sandra", 123); // parameters have to be passed into the function in order

  // named optional parameters
  void addUser2(String firstName, int id, {String lastName, int age}) {
    print("first name: ${firstName}");
    print("ID: ${id}");
    print("Last name: ${lastName}");
  }

  addUser2("sandra", 123, lastName: "laudando");

  // positional optional parameters
  void addUser3(String firstName, int id, [String lastName, int age]) {
    print("first name: ${firstName}");
    print("ID: ${id}");
    print("Last name: ${lastName}");
  }

  addUser3("sandra", 123, "laudando");

  // default parameters
  void addUser4(String firstName, int id,
      [String lastName = "none", int age = 0]) {
    print("first name: ${firstName}");
    print("ID: ${id}");
    print("Last name: ${lastName}");
    print("age: ${age}");
  }

  addUser4("sandra", 123, "laudando");

  // arrow function
  String sayHello() => "Hello";

  String message(String message) => message;
}
