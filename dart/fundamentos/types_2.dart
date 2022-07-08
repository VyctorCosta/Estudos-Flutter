main() {
  List<int> arrayNum = [1, 2, 3, 4];

  print(arrayNum);

  Map<String, Object> person = {
    "name": "Vyctao",
    "age": 21
  };

  print(person["name"]);

  //* Set é tipo para conjuntos
  Set listPersons = {"Vyctao", "Teteu", "Tutu", "Joujou"};
  Set listPersonsGreaterThanTwenty = {"Vyctao", "Joujou"};

  print(listPersons.intersection(listPersonsGreaterThanTwenty));
}