Type printFirst<Type> (List<Type> list) {
  return list[0];
}

main() {
  var listInt = [1, 2, 3, 4, 5];
  var listStr = ["Vyctor ", "Teteu ", "Tutu ", "Joujou"];

  print(printFirst<int>(listInt));
  print(printFirst<String>(listStr));
}