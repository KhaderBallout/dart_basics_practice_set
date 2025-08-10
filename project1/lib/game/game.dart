import 'package:project1/models/team.dart';
import 'package:project1/models/referee.dart';
import 'package:project1/models/stadium.dart';

class Game {
  List<Team> _teamList;
  Referee _gameReferee;
  Stadium _gameStadium;

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
  void simulateMatch() {
    Team teamA = _teamList[0];
    Team teamB = _teamList[1];

    double teamAScore = teamA.totalTeamPower();
    double teamBScore = teamB.totalTeamPower();

    if(gameReferee.bribed){
      teamAScore = teamAScore + 20; 
    }

    print('--- MATCH REPORT ---');
    print('Stadium: ${gameStadium.stadiumName}');
    print('Location: ${gameStadium.location}, Capacity: ${gameStadium.capacity}');
    print('Referee: ${_gameReferee.name} (Experience: ${_gameReferee.experience.toStringAsFixed(1)}, Bribed: ${_gameReferee.bribed})');

    print('${teamA.teamName} vs ${teamB.teamName}');
    print('${teamA.trainer.name} strategy: ${teamA.trainer.strategy}');
    print('${teamB.trainer.name} strategy: ${teamB.trainer.strategy}');
    print('${teamA.teamName} Power: ${teamAScore.toStringAsFixed(1)}');
    print('${teamB.teamName} Power: ${teamBScore.toStringAsFixed(1)}');

    if (teamAScore > teamBScore) {
      print('Winner: ${teamA.teamName}');
    } else if (teamBScore > teamAScore) {
      print('Winner: ${teamB.teamName}');
    } else {
      print('It\'s a Draw!');
    }
  }
}
