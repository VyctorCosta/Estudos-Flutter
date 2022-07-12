class People {
  String? name;
  int? age;

  sayHi() {
    print("Olá meu nome é $name e eu tenho $age anos!!");
  } 
}

main() {
  var vyctao = new People();
  vyctao.name = "Vyctão";
  vyctao.age = 21;

  vyctao.sayHi();
}