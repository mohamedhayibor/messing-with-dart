import "dart:math" as math;
import "dart:io";

// check whether a number (magic number) is within a given list
// user can pass out-of-range numbers or same number (not in their benefit though)
void magicNumWithin(List<number> nums, Int magicNumber) {
  return nums.where((i) => int.parse(i) == magicNumber).length > 0;
}

void main(List<arguments> nums) {
  // warn user how to play if num is empty
  if (nums.isEmpty || nums.length != 3) {
    print("\nPlease pass in 3 numbers to get the magic number between [0 - 10]\n\nTo do so like `> dart passThreeNumbers.dart num1 num2 num3`");
    exit(0);
  }

  var magicNumber = new math.Random().nextInt(11); // [0, 10]

  if ( magicNumWithin(nums, magicNumber) ) {
    print("\nBingo, you got it. ${magicNumber} was the magic number");
  } else {
    print("\nYou lost. The magic number was ${magicNumber}. Try again.");
  }
}
