// This is our Dart intro file

main() {
  print("Hello");
  print("\nHi"); // this add a newline before the print

  // Initialize a variable
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

  // Different dataTypes
  int number = 2;
  double cost = 12.50;
  bool isSnowing = false;

  // how to print out numbers
  print(number);
  print("My number is: ${number}");
  print("My number is: " + number.toString());

  // Lists/Arrays
  List<String> alphabet = ['a', 'b', 'c', 'd'];
  print("\nAlphabet: ${alphabet}");
  String a = alphabet[0]; // get a specific element from array by index
  String b = alphabet[1];
  print("Get a: ${a}");
  print("Get b: ${b}");

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

  int numberOfItems = thanksGivingGroceryList.length;
  print("Number of grocery items: ${numberOfItems}");

  thanksGivingGroceryList.add("Ice Cream");
  thanksGivingGroceryList.remove("Ice Cream");
  thanksGivingGroceryList.removeAt(0);
  print("\nGrocery List: ${thanksGivingGroceryList}");
}
