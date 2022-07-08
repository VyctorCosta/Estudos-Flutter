import "dart:io";
import 'dart:math';

//* Const é para variaveis cujo valor é atribuido em tempo de compilação.
//* Final é para variaveis cujo valor é atribuido em tempo de execução. 
main() {
  const double PI = 3.14;
  
  stdout.write("Digite o valor do raio: ");
  final double radius = double.parse(stdin.readLineSync()!);

  print("A área do circulo é ${PI * pow(radius, 2)}");
}