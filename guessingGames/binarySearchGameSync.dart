import 'dart:io';
import 'dart:math' as math;

void main() {
  stdout.write("\nThis game is to hopefully let you experience how binary search can be powerful.\nOr rather efficient.\n\nStart by choosing a number between 0 and 100.\nGuess: ");

  mainLogic();
}

compare(number userGuess, number magicNumber) {
  if (userGuess < magicNumber) {
    stdout.write("${userGuess} is too small, amp it up\n\nGuess: ");
  } else if (userGuess > magicNumber) {
    stdout.write("${userGuess} is too big, tone it down\n\nGuess: ");
  } else {
    print("Congrats. ${userGuess} was the right answer.\n");
    // exit for good
    exit(0);
  }
}

void mainLogic() {
  final magicNumber = new math.Random().nextInt(101); // [0..100]

  // no worries we are exiting when the right answer is found
  while (true) {
    var userGuess = int.parse(stdin.readLineSync());
    compare(userGuess, magicNumber);
  }
}