import 'package:project1/models/person.dart';

class Referee extends Person {

  double _experience;
  bool _bribed;

  Referee({
    required name,
    required age,
    double? experience,
    bool? bribed,
  }) : _experience = experience ?? 0.0,
       _bribed = bribed ?? false ,
       super(name: name, age: age);

  // Getters
  double get experience => _experience;
  bool get bribed => _bribed;

  // Setters
  set experience(double newExperience) {
    if (newExperience >= 0) {
      _experience = newExperience;
    } else {
      throw ArgumentError("Experience cannot be negative");
    }
  }

  set bribed(bool status) => _bribed = status;

  @override
  String toString() {
    return 'Referee(name: $name, age: $age, experience: $_experience, bribed: $_bribed)';
  }
}