// In class activity
/*
  Write a program that prints out a student's grade based on their test score
  Start with creating a variable name of type int called studentScore;

  Score     Grade
  90-100    A
  80-89     B
  70-79     C
  50-69     D
  0-59      F
*/

main() {
  int studentScore = 0;

  if (studentScore >= 90) {
    print("Grade: A");
  } else if (studentScore >= 80 && studentScore <= 89) {
    print("Grade: B");
  } else if (studentScore >= 70 && studentScore <= 79) {
    print("Grade: C");
  } else if (studentScore >= 50 && studentScore <= 69) {
    print("Grade: D");
  } else {
    print("Grade: F");
  }
}
