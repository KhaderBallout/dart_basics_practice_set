void main() {
  printItems(["Apple", "Banana", "Mango"], title: 'Fruits');
  printItems(["Python", "Flutter", "Dart"]);
}

void printItems(List<String> items, {String title = "Item List"}){
  print(title);
  for(int i = 0; i<items.length; i++){
    print('${i+1} ${items[i]}');
  }
}