import 'package:project1/models/player.dart';
import 'package:project1/models/trainer.dart';

class Team {
  String _teamName;
  Trainer _trainer;
  List<Player> _playerList;
  int _teamReputation;
  static Map<String,int> strategyMatrix = {
  'Offensive': 7,
  'Defensive': 3,
  'Balanced': 5,
  'Counter-Attack': 5,
  'Pressing': 6,
  'Park-the-Bus': 4,
  };

  Team({
    required String teamName,
    required Trainer trainer,
    required List<Player> playerList,
    int? teamReputation,
  })  : _teamName = teamName,
        _trainer = trainer,
        _playerList = playerList,
        _teamReputation = teamReputation ?? 0;

  // Getters
  String get teamName => _teamName;
  Trainer get trainer => _trainer;
  List<Player> get playerList => _playerList;
  int get teamReputation => _teamReputation;

  // Setters
  set teamName(String value) {
    _teamName = value;
  }

  set trainer(Trainer value) {
    _trainer = value;
  }

  set playerList(List<Player> value) {
    _playerList = value;
  }

  set teamReputation(int value) {
    _teamReputation = value;
  }

  @override
  String toString() {
    return 'Team(teamName: $_teamName, trainer: $_trainer, players: $_playerList, reputation: $_teamReputation)';
  }

  void printPlayerDetails() {
    if (_playerList.isEmpty) {
      print('No players in the team.');
      return;
    }

    for (var player in _playerList) {
      print(player.toString());
      }
    }

  void addPlayer(Player newPlayer) {
    _playerList.add(newPlayer);
    print('${newPlayer.name} has been added to $_teamName.');
  }

  bool removePlayerByName(String name) {
    for (int i = 0; i < _playerList.length; i++) {
      if (_playerList[i].name.toLowerCase() == name.toLowerCase()) {
        final removedPlayer = _playerList.removeAt(i);
        print('${removedPlayer.name} has been removed from $_teamName.');
        return true;
      }
    }
    print('Player with name "$name" not found.');
    return false;
  }

  double totalTeamPower(){
    double totalTeamPower = 0.0;
    for (var player in _playerList) {
      double playerScore = player.power + player.stamina;

      if (player.injury) {
        playerScore -= 20;
      }
      totalTeamPower += playerScore;
    }
    if (trainer.motivation){
      totalTeamPower += 20;
    }
    if (strategyMatrix.containsKey(trainer.strategy)) {
      totalTeamPower += strategyMatrix[trainer.strategy]!;
    }
    totalTeamPower += trainer.experience ;

  return totalTeamPower;
  }
}