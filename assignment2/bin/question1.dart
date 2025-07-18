import "dart:io";

void main() {
  // Reads two numbers
  print("Please Enter the first number");
  double firstNumber = double.parse(stdin.readLineSync() ?? '0');
  print("Please Enter the second number");
  double secondNumber = double.parse(stdin.readLineSync() ?? '0');
  
  // Checks if either is odd and the other is even, or both are positive (using &&, ||).
  bool condition = ((firstNumber % 2 != 0 && secondNumber % 2 == 0) || (firstNumber % 2 == 0 && secondNumber % 2 != 0)) || (firstNumber > 0 && secondNumber > 0);
  print('Condition check result is: $condition' );

  // Uses ++ and -- to increment the first and decrement the second.
  firstNumber++;
  secondNumber--;

  // Casts one result to an integer (toInt()).
  int firstNumberToInt = firstNumber.toInt();
  print('Cast first number $firstNumber to Int and the value of it is: $firstNumberToInt ');

  // Applies the bitwise NOT ~ to the first number after casting.
  int firstNumberBitwise = ~firstNumberToInt ;
  print('Bitwise value for the first number is $firstNumberBitwise');

  // Prints true if the incremented first number is greater than the decremented second, using a conditional operator.
  bool result = (firstNumber > secondNumber) ? true : false;
  print('Is first number greater than second number: $result');
}