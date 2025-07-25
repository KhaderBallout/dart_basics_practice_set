import 'dart:io';
void main() {
  print('Please enter your grade');
  double grade = double.parse(stdin.readLineSync() ?? '0');
  if (100 >= grade && grade >= 0 ){
    if (100 >= grade && grade  >= 90){
      print('Excellent! You got an A.');
    }else if (89 >= grade && grade  >= 80){
      print('Very Good! You got a B.');
    }else if (79 >= grade && grade  >= 70){
      print('Good! You got a C.');
    }else {
      print('You need improvement. You got a D');
    }
  }else{
    print("Please enter a valid grade between 0 and 100.");
  }
}