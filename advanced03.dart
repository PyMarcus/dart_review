abstract class Animal{
  String name = "";
  Animal(this.name);

  void jump(){

  }
}

class Settings{
  static String Name = "Settings";

  static void showName(){
    print(Name);
  }
}

abstract class OK{
  void thisIsAnInterface();
}

// sobreescrita de método
class Dog extends Animal implements OK{
  String name = "";
  Dog(this.name):super(name);

  @override
  void jump(){
    print("The ${this.name} is jumping");
  }

  @override
  void thisIsAnInterface() {
    print("OK");
  }

}

void main(){
  final Dog dog = Dog("Jose"); // com final, a variavel recebe apenas 1x a instancia
  dog.jump();
  Settings.showName();

  List<dynamic> l = [1, "2"];
  l.add('c');
  l.remove(1);
  l.forEach((element) {
    print(element);
  });
  print(l);


  Map<String, String> pessoa = Map();
  pessoa["nome"] = "Jose";
  pessoa.forEach((key, value) {
    print("Key: $key, Value: $value");
  });
}
