class Student {
  String _name;
  double _grade;
  String? _email;
  String? _address;
  String? _phone;
  final int _id; 
  static int _studentIdCounter = 1;

  Student({
    required String name,
    required double grade,
    String? email,
    String? address,
    String? phone,
  }) : _name = name,
       _grade = grade,
       _email = email,
       _address = address,
       _phone = phone,
       _id = _studentIdCounter++;

  Student.fake()
    : _name = "Test",
      _grade = 0,
      _email = "test@gmail.com",
      _address = "Bethlehem",
      _phone = "059999999",
      _id = _studentIdCounter++;

  set name(String name) {
    _name = name;
  }

  String get name => _name;

  set grade(double grade) {
    if (grade >= 0 && grade <= 100) {
      _grade = grade;
    } else {
      print('Error: grade value must be between 0 and 100');
    }
  }

  double get grade => _grade;

  set email(String? email) {
    _email = email;
  }

  String? get email => _email;

  set address(String? address) {
    _address = address;
  }

  String? get address => _address;

  set phone(String? phone) {
    _phone = phone;
  }

  String? get phone => _phone;

  @override
  String toString() {
    return 'Student Info: Student ID: $_id Name: $_name Grade: $_grade Email: ${_email ?? 'not specified'} Address: ${_address ?? 'not specified'} Phone: ${_phone ?? 'not specified'} ';
  }

  bool isPassed() => _grade >= 60;

}