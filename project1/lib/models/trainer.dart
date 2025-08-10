import 'package:project1/models/person.dart';
import 'dart:math';

class Trainer extends Person {

  String _strategy;
  double _experience;
  bool _motivation;

  Trainer({
    required name,
    required age,
    required strategy,
    bool? motivation,
  }) : _strategy = strategy,
       _experience = _calculateExperience(age),
       _motivation = motivation ?? false,
       super(name: name, age: age);

  // Getters
  String get strategy => _strategy;
  double get experience => _experience;
  bool get motivation => _motivation;

  // Setters
  set strategy(String value) {
    _strategy = value;
  }

  set experience(double value) {
    _experience = value;
  }

  set motivation(bool value) {
    _motivation = value;
  }

  static double _calculateExperience(int experience) {
    return Random().nextInt(experience) + 79;
  }

  @override
  String toString() {
    return 'Trainer(name: $name, age: $age, strategy: $_strategy, experience: $_experience, motivation: $_motivation)';
  }

}