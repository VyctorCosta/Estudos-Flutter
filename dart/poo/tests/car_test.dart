import '../car.dart';

main() {
  var car = Car(maxSpeed: 150);

  while(!car.isOnLimit()) {
    print("O carro está com velocidade igual a: ${car.speedUp()}");
  }

  car.currentSpeed = 60;
  print("O carro está com a velocidade máxima de ${car.currentSpeed}");
}