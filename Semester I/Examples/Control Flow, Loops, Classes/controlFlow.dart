import 'Dog.dart';

main() {
  // operators
  int add = 2 + 2;
  int subtract = 4 - 2;
  double divide = 4 / 2;
  int modulus = 4 % 2;

  // relational operators
  bool exp1 = 2 > 7;
  bool exp2 = 6 >= 7;
  bool exp3 = 6 != 2;

  // logical operators
  bool exp4 = (2 > 4) && (5 > 2);
  bool exp5 = (2 + 2) == (8 / 2);
  bool exp6 = (6 >= 3) || (7 < 10);
  bool exp7 = (6 > 5) || (7 <= 10) && (2 < 5) || (4 >= 10);

  // control flow
  bool isSunny = false;
  bool isRaining = true;

  if (isSunny) {
    print("GO OUTSIDE 🌤");
  } else if (isRaining) {
    print("Don't forget an umbrella, it's raining 🌧");
  } else {
    print("Don't go outside and sleep in.");
  }

  // short cut
  String todaysWeather = isSunny ? "It's sunny today!" : "It's cloudy today";
  print(todaysWeather);

  // loops
  for (int i = 0; i < 5; i++) {
    print(i);
  }

  List<int> numbers = [1, 2, 3, 4, 5];
  for (int i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }

  List<int> addNumbers = [1, 2, 3, 4, 5];
  for (int i = 0; i < addNumbers.length; i++) {
    // addNumbers[i] = addNumbers[i] + 1;
    addNumbers[i] += addNumbers[i];
  }
  print(addNumbers);

  // for each
  addNumbers.forEach((number) => print(number));

  // for-in
  for (int number in numbers) {
    print(number);
  }

  // while
  int score = 0;
  while (score <= 4) {
    score++;
    print("score: ${score}");
    if (score == 4) {
      print("you won!");
    }
  }

  // break and continue
  int counter = 0;
  while (counter < 5) {
    counter++;
    if (counter == 4) {
      break;
    } else if (counter == 2) {
      continue;
    }
  }

  // map iterable
  addNumbers.map((number) => print(number));
  // addNumbers.map((number) => print(item)); this is wrong

  List<int> addedNumbers = addNumbers.map((number) => number + 2);
  print("Added numbers list (+ 2): ${addedNumbers}");

  // switch case
  String weather = "sunny";
  switch (weather) {
    case 'sunny':
      print("wear sunscreen");
      break;
    case 'rainy':
      print("Bring an umbrella");
      break;
    case 'snowy':
      print("wear a puffy coat");
      break;
    default:
      print("weather is unknown");
  }

  // throw
  // throw "I LOVE cats";
  try {
    List<int> numbers = [1, 2, 3, 4, 5, 6];
    print(numbers[-1]);
  } catch (e) {
    print(e);
    // throw Exception("message");
  }

  // classes
  Dog spot = Dog("Dalmation", "Black and white", "Spot", 40.00);
  spot.bark();
  spot.showInfo();
}
