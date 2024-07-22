double area(double base, var high){
  return base * high;
}


// lastName é opcional.
void sayMyName(String foreName, {var lastName}){
  if(lastName != null && lastName != ""){
    print("Forename: $foreName e Lastname: $lastName");
    return;
  }
  lastName ?? "OK"; // se for nulo
  print("Forename: $foreName");
}

String say(String word){
  return "I'm said $word";
}

void decorator(String word, Function sayF){
  print(sayF(word));
}

class Animal{
  String name = "";
  
  
  Animal(String name){
    this.name = name;
  }
  
  // ou: Animal(this.name);
  
  void sleep(){
    print("The ${this.name} is sleeping.");
  }
}

class Cat extends Animal{
  
  // metodo privado
  String _color = "red";
  
  String get color{
    return this._color;
  }
  
  set color(String which){
    this._color = which;
  }
  
  
  Cat(String name) : super(name);
  
  void jump(){
    print("Jumping...");
  }
}

void main(){
  print(area(5.9, 3.3));
  sayMyName("Marcus");
  sayMyName("Marcus", lastName:"Vinicius");
  
  // anonima:
  (){
    print("Running into anonymous!");
  }();
  
  decorator("Hello, world", say);
  
  
  Animal dog = new Animal("Dog");
  dog.sleep();
  
  Cat cat = new Cat("Miau");
  cat.sleep();
  cat.jump();
  print(cat.color);
  cat.color = "blue";
  print(cat.color);
}
