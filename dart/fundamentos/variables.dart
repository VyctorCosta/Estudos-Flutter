main() {
  String str = "String";
  int number = 5;
  double float = 2.5;
  print(str * number);
  print("${float}\n");

  print("-"*20);
  //* Inferencia de Tipos
  var nome = "Vyctao";
  var idade = 21;

  print(nome.runtimeType);
  print(idade is int);
}