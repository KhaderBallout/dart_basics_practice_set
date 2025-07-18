void main() {
  // Declares a constant list [2, 4, 6, 8, 10].
  List<int> myList = [2, 4, 6, 8, 10];

  // Converts the list to a set and adds the value 12.
  Set<int> mySet = myList.toSet();
  mySet.add(12);
  print('My list after convert it to set $mySet');

  // Creates a map where keys are from the set and values are the numbers multiplied by 3.
  Map<int, int> myMap = {};
  myMap[2] = 2*3;
  myMap[4] = 4*3;
  myMap[6] = 6*3;
  myMap[8] = 8*3;
  myMap[10] = 10*3;
  myMap[12] = 12*3;

  //Prints the map
  print('My Map $myMap');
}