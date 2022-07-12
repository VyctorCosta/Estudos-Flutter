class Car {
  int? maxSpeed;
  int currentSpeed = 0;

  Car({this.maxSpeed = 100, this.currentSpeed = 0});

  int speedUp() {
    if(currentSpeed + 5 < maxSpeed!) {
      currentSpeed += 5;
    } else {
      currentSpeed = maxSpeed!;
    }
    return currentSpeed;
  }

  int brake() {
    if(currentSpeed - 5 < 0) {
      currentSpeed += 5;
    } else {
      currentSpeed = 0;
    }
    return 0;
  }

  bool isOnLimit() {
    return maxSpeed == currentSpeed;
  }
}
