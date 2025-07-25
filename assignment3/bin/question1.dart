import "dart:io";

void main() {
  // Read the user age
  print("Please Enter your age");
  int userAge = int.parse(stdin.readLineSync() ?? '0');
  if(userAge >= 18){
    print("You are eligible to vote.");
  }else if (18 > userAge && userAge >=0 ) {
    print("You are not eligible to vote.");
  }else {
    print("Age cannot be negative.");
  }

}