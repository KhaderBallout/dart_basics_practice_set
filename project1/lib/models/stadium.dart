class Stadium {
  String _stadiumName;
  String _location;
  int _capacity;

  Stadium({
    required String stadiumName,
    required String location,
    required int capacity,
  })  : _stadiumName = stadiumName,
        _location = location,
        _capacity = capacity;

  // Getters
  String get stadiumName => _stadiumName;
  String get location => _location;
  int get capacity => _capacity;

  // Setters
  set stadiumName(String value) {
    _stadiumName = value;
  }

  set location(String value) {
    _location = value;
  }

  set capacity(int value) {
   _capacity = value;
  }


  @override
  String toString() {
    return 'Stadium(stadiumName: $_stadiumName, location: $_location, capacity: $_capacity)';
  }
}