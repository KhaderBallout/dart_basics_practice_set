class Person {
  String _name;
  int _age;

  Person({ required String name, required int age}) : _name = name, _age = age ;

  // Getter for name
  String get name => _name;

  // Setter for name
  set name(String newName) {
    _name = newName;
  }

  // Getter for age
  int get age => _age;

  // Setter for age 
  set age(int newAge) {
    if (newAge >= 0) {
      _age = newAge;
    } else {
      throw ArgumentError("Age cannot be negative");
    }
  }

  // Override toString method
  @override
  String toString() => 'Person(name: $_name, age: $_age)';
}
