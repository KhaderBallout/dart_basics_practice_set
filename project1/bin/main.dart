import 'dart:io';
import 'dart:math';
import 'package:project1/models/player.dart';
import 'package:project1/models/team.dart';
import 'package:project1/models/trainer.dart';
import 'package:project1/models/stadium.dart';
import 'package:project1/models/referee.dart';
import 'package:project1/game/game.dart';

String prompt(String message) {
  stdout.write(message);
  return stdin.readLineSync() ?? '';
}

String getValidName(String label) {
  String? input;
  do {
    stdout.write('Please enter $label name: ');
    input = stdin.readLineSync()?.trim();
    if (input == null || input.isEmpty) {
      print('Input cannot be empty. Please try again.');
    }
  } while (input == null || input.isEmpty);
  return input;
}

int getValidAge(String label) {
  String? input;
  int? age;

  while (true) {
    if (label.toLowerCase() == 'player') {
      print('Note: Age must be between 18 and 40 for Player.');
    } else {
      print('Note: Age must be between 30 and 65 for Trainer and Referee.');
    }

    stdout.write('Please enter $label age: ');
    input = stdin.readLineSync();
    age = int.tryParse(input ?? '');

    if (label.toLowerCase() == 'player') {
      if (age != null && age >= 18 && age <= 40) {
        return age;
      }
    } else {
      if (age != null && age >= 30 && age <= 65) {
        return age;
      }
    }

    print('Invalid age! Please try again.\n');
  }
}

String getValidPosition() {
  const validPositions = ['goalkeeper', 'defender', 'midfielder ', 'attacker'];
  String? input;

  do {
    stdout.write('Position (goalkeeper, defender, midfielder , attacker): ');
    input = stdin.readLineSync()?.toLowerCase().trim();

    if (input == null || !validPositions.contains(input)) {
      print('Invalid position! Please enter one of the valid options.');
    }
  } while (input == null || !validPositions.contains(input));

  return input;
}

int getValidJerseyNumber() {
  String? input;
  int? number;

  do {
    stdout.write('Jersey number (1–25): ');
    input = stdin.readLineSync();
    number = int.tryParse(input ?? '');

    if (number == null || number < 1 || number > 25) {
      print('Invalid jersey number! Please enter a number between 1 and 25.');
    }
  } while (number == null || number < 1 || number > 25);

  return number;
}

String getValidStrategy() {
  const validStrategies = [
    'offensive',
    'defensive',
    'balanced',
    'counter-attack',
    'pressing',
    'park-the-bus'
  ];

  String? input;
  do {
    stdout.write('Choose strategy (Offensive, Defensive, Balanced, Counter-Attack, Pressing, Park-the-Bus): ');
    input = stdin.readLineSync()?.trim().toLowerCase();

    if (input == null || !validStrategies.contains(input)) {
      print('Invalid choice! Please enter one of the listed strategies.');
    }
  } while (input == null || !validStrategies.contains(input));

  return input;
}

bool getBooleanInput(String message) {
  String? input;
  do {
    stdout.write(message);
    input = stdin.readLineSync()?.trim().toLowerCase();
    if (input != 'true' && input != 'false') {
      print('Invalid input! Please enter true or false.');
    }
  } while (input != 'true' && input != 'false');

  return input == 'true';
}

Player createPlayer() {
  String name = getValidName('Player');
  int age = getValidAge('Player');
  String position = getValidPosition();
  int jersey = getValidJerseyNumber();
  return Player(name: name, age: age, position: position, jerseyNumber: jersey);
}

Team createTeam() {
  String teamName = getValidName('Team');
  String trainerName = getValidName('Trainer');
  int trainerAge = getValidAge('Trainer');
  String strategy = getValidStrategy();
  bool motivation = getBooleanInput('Is the trainer motivated? (true/false)');
  Trainer trainer = Trainer(name: trainerName, age: trainerAge, strategy: strategy, motivation: motivation);

  final playerCount = int.parse(prompt('Number of players: '));
  List<Player> players = [];
  for (int i = 0; i < playerCount; i++) {
    print('\nEnter details for Player ${i + 1}:');
    players.add(createPlayer());
  }

  bool hasStadium = getBooleanInput('Is the team has a stadium? (true/false)');
  if (hasStadium){
    Stadium teamStadium = createStadium();
    return Team(teamName: teamName, trainer: trainer, playerList: players, teamStadium: teamStadium);
  }
  return Team(teamName: teamName, trainer: trainer, playerList: players);
}

Stadium createStadium() {
  String name = getValidName('Stadium');
  String location = getValidName('Stadium location');
  int capacity = int.parse(prompt('Stadium capacity: '));
  return Stadium(stadiumName: name, location: location, capacity: capacity);
}

Referee createReferee() {
  String name = getValidName('Referee');
  int age = getValidAge('Referee');
  double experience = Random().nextDouble() * 10 + 5;
  bool bribed = getBooleanInput('Is the referee bribed with the first team? (true/false) ');
  return Referee(name: name, age: age, experience: experience, bribed: bribed);
}

void main() {
  print('--- FOOTBALL MATCH SIMULATION ---');
  print('--- First Team creation process ---');
  Team team1 = createTeam();
  print('--- Second Team creation process ---');
  Team team2 = createTeam();
  print('--- Game Stadium creation process ---');
  Stadium stadium = createStadium();
  print('--- Game Referee creation process ---');
  Referee referee = createReferee();
  Game game = Game(teamList: [team1, team2], gameReferee: referee, gameStadium: stadium);

  game.simulateMatch();
}