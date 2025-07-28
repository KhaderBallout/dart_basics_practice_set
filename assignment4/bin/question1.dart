void main() {
  greet('Layla');
  greet('Ali', 'Welcome');
}

void greet(String name, [String greeting = 'Hello']) {
  print('$greeting, $name!');
}
