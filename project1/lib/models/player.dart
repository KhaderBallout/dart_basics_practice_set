import 'dart:math';
import 'package:project1/models/person.dart';


class Player extends Person {

  static int _idCounter = 1;
  final int _id;
  String _position;
  int _jerseyNumber;
  double _stamina ;
  bool _injury ;
  int _power;

  Player({
    required name,
    required age,
    required position,
    required jerseyNumber,
    double? stamina,
    bool? injury,
  }) : _power = Random().nextInt(30) + 69,
       _position = position,
       _jerseyNumber = jerseyNumber,
       _stamina = stamina ?? 0.0,
       _injury = injury ?? false,
       _id = _idCounter++,
       super(name: name, age: age);

  // Getters
  int get id => _id;
  String get position => _position;
  int get jerseyNumber => _jerseyNumber;
  int get power => _power;
  double get stamina => _stamina;
  bool get injury => _injury;

  // Setters
  set position(String newPosition) => _position = newPosition;
  set jerseyNumber(int newNumber) => _jerseyNumber = newNumber;
  set stamina(double newStamina) => _stamina = newStamina;
  set injury(bool status) => _injury = status;

  @override
  String toString() {
    return 'Player(id: $_id, name: $name, age: $age, '
           'position: $_position, jersey: $_jerseyNumber, '
           'stamina: $_stamina, injury: $_injury, power: $_power)';
  }
}
