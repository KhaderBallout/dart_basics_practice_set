import 'dart:io';
void main(s) {
  print('Please Enter your username: ');
  String username = stdin.readLineSync() ?? '';
  print('Please Enter your password: ');
  String password = stdin.readLineSync() ?? '';
  print('Please Enter your role (either "admin" or "user"): ');
  String userRole = stdin.readLineSync() ?? '';

  if (username == 'manager' && password == 'admin@123' && userRole == 'admin') {
    print('Welcome Admin Manager! Full access granted.');
  }
  else if (username == 'manager' && password == 'admin@123' && userRole != 'admin') {
    print('Access denied: Admin role required.');
  }
  else if (username == 'guest' && password == 'user@123' && userRole == 'user') {
    print('Welcome Guest! Limited access granted.');
  }
  else if ((username == 'manager' && password != 'admin@123') || (username == 'guest' && password != 'user@123')) {
    print('Incorrect password. Try again.');
  }
  else {
    print('Unknown user.');
  }
}