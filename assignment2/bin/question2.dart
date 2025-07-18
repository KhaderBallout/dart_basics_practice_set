import "dart:io";

void main() {
// Takes a double number (e.g., num = 12.7).
  print("Please Enter A double number");
  double input = double.parse(stdin.readLineSync() ?? '0');

  //Prints the ceiling, floor, and rounded values.
  print('My double number is $input');
  print('The ceil value for it is ${input.ceil()}');
  print('The floor value for it is ${input.floor()}');
  print('The round value for it is ${input.round()}');

  // Concatenates the number as a string with a given name (e.g., "Value: 12.7").
  String concatenateNumber = 'Value: $input';
  print('Concatenation result is $concatenateNumber');

  // Uses ? : to print "Large" if the number is above 10, otherwise "Small".
  String result = input > 10 ? "Large" : "Small";
  print('Is the double number greater than 10: $result');


}