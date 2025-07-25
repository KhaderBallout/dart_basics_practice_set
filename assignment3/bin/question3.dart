import "dart:io";
void main() {
  while(true){
    print('Please Enter your password: ');
    String password = stdin.readLineSync() ?? '';
    if (password == 'admin123'){
      print('Access granted.');
      break;
    }
    print('Wrong Password Please Try again.');
  }
}