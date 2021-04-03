main() {
  // operators
  int add = 2 + 2;
  int subtract = 4 - 2;
  double divide = 10 / 4;
  int mod = 4 % 2;

  // relational operators
  bool exp1 = 2 > 7;
  bool exp2 = 6 >= 7;
  bool exp3 = 6 != 2;

  print("exp1: ${exp1}");
  print("exp2: ${exp2}");
  print("exp3: ${exp3}");

  // logical operators
  bool exp4 = (2 > 4) && (5 > 2);
  bool exp5 = (2 + 2) == (8 / 2);
  bool exp6 = (6 >= 3) || (7 < 10);
  bool exp7 = (6 > 5) || (7 <= 10) && (2 < 5) || (4 >= 10);

  print("exp4: ${exp4}");
  print("exp5: ${exp5}");
  print("exp6: ${exp6}");
  print("exp7: ${exp7}");

  // control flow
  bool isSunny = false;
  bool isRaining = true;

  if (isRaining) {
    print("Bring an umbrella 🌧 !!!");
  } else if (isSunny) {
    print("GO OUTSIDE!! 🌤");
  } else {
    print("DON'T GO ANYWHERE!");
  }

  if (isSunny) {
    print("🌤");
  } else {
    print("rain");
  }

  // if else short cut
  String todaysWeather = isSunny ? "🌤" : "rain";
  print("todaysWeather: ${todaysWeather}");

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
    addNumbers[i] = addNumbers[i] + 1;
  }
  print(addNumbers);

  // for each
  addNumbers.forEach((number) => print(number));
  addNumbers.forEach((number) {
    print(number);
  });

  // for-in
  for (int number in addNumbers) {
    print(number);
  }

  // while
  int score = 0;
  while (score <= 4) {
    score++;
    print("score: ${score}");

    if (score == 4) {
      print("You won! Game over.");
    }
  }

  // break and continue
  int counter = 0;
  while (counter < 5) {
    counter++;
    if (counter == 2) {
      break; // stop the loop and break out
    }
  }

  counter = 0;
  while (counter < 5) {
    counter++;
    if (counter == 2) {
      continue; // continue and restart the loop, do not exeecute the rest of the code in the loop afteer continue
    }
    print("hello"); // hello will not be printed if counter == 2
  }

  // map
  var numbersList = addNumbers.map((number) => number);
  print("numbersList: ${numbersList}");

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
}
