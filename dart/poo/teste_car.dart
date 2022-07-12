import 'car.dart';

main() {
  var car = Car(maxSpeed:50, currentSpeed: 0);

  while(!car.isOnLimit()) {
    print("O carro está com velocidade igual a: ${car.speedUp()}");
  }
}