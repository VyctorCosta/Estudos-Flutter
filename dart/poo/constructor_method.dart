class People {
  String? name;
  int? age;

  sayHi() {
    print("Olá meu nome é $name e eu tenho $age anos!!");
  }

  //* Forma Extensa

  /* People(String name, int age) {
    this.name = name;
    this.age = age;
  } */ 
  
  //* Forma reduzida
  People([this.name, this.age = 20]);
  
}

main() {
  var vyctao = new People("Vyctao", 21);
  var joujou = new People("JouJou");

  vyctao.sayHi();
  joujou.sayHi();
}