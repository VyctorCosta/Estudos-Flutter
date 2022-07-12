class Car {
  int? maxSpeed;
  int _currentSpeed = 0;

  Car({this.maxSpeed});

  int get currentSpeed {
    return _currentSpeed;
  }

  void set currentSpeed(int newSpeed) {
    if (newSpeed > maxSpeed!) {
      _currentSpeed = maxSpeed!;
    } else if(newSpeed < 0){
      _currentSpeed = 0;
    } else {
      _currentSpeed = newSpeed;
    }
  }

  int speedUp() {
    if(_currentSpeed + 5 < maxSpeed!) {
      _currentSpeed += 5;
    } else {
      _currentSpeed = maxSpeed!;
    }
    return _currentSpeed;
  }

  int brake() {
    if(_currentSpeed - 5 < 0) {
      _currentSpeed += 5;
    } else {
      _currentSpeed = 0;
    }
    return 0;
  }

  bool isOnLimit() {
    return maxSpeed == _currentSpeed;
  }
}
