import 'package:project1/models/team.dart';
import 'package:project1/models/referee.dart';
import 'package:project1/models/stadium.dart';


class Game {
  List<Team> _teamList;
  Referee _gameReferee;
  Stadium _gameStadium;
  String _result = '';

  // Constructor
  Game({
    required List<Team> teamList,
    required Referee gameReferee,
    required Stadium gameStadium,
  })  : _teamList = teamList,
        _gameReferee = gameReferee,
        _gameStadium = gameStadium;

  // Getters
  List<Team> get teamList => _teamList;
  Referee get gameReferee => _gameReferee;
  Stadium get gameStadium => _gameStadium;
  String get result => _result;

  // Setters
  set teamList(List<Team> teams) => _teamList = teams;
  set gameReferee(Referee referee) => _gameReferee = referee;
  set gameStadium(Stadium stadium) => _gameStadium = stadium;

  // toString
  @override
  String toString() {
    return 'Game between ${_teamList[0].teamName} and ${_teamList[1].teamName} '
           'with referee ${_gameReferee.name} at $_gameStadium Stadium ';
  }

  // Simulate match logic
  void simulationLogic() {
    double team1Skill = _teamList[0].teamReputation + _gameReferee.experience;
    double team2Skill = _teamList[1].teamReputation + _gameReferee.experience;

    // Adjust for referee bias
    if (_gameReferee.bribed) {
      team2Skill += 10; // Give advantage to team2
    }

    if (team1Skill > team2Skill) {
      _result = '${_teamList[0].teamName} wins';
    } else if (team2Skill > team1Skill) {
      _result = '${_teamList[1].teamName} wins';
    } else {
      _result = 'Draw';
    }
  }

  // Return the outcome
  String matchOutcome() {
    if (_result.isEmpty) simulationLogic();
    return _result;
  }
}
