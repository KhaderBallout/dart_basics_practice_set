import 'dart:io';
void main() {
  print('Please Enter a number between 1 and 7');
  int number = int.parse(stdin.readLineSync() ?? '1');
  switch(number){
    case 1: print('Sunday');
    case 2: print('Monday');
    case 3: print('Tuesday');
    case 4: print('Wednesday');
    case 5: print('Thursday');
    case 6: print('Friday');
    case 7: print('Saturday');
    default: print('Invalid input.');
  }
}