void main() {
  var name = "Marcus"; // Uma vez inferido, o tipo não pode ser alterado
  String lastName = "Vinícius";
  const int HIGH = 178; 
  double weight = 87.0;
  int names = 4;
  dynamic age = 25;
  
  double v = names.toDouble(); // Conversão explícita de int para double
  
  print("Name: $name");
  print("lastName: $lastName");
  print("High: $HIGH");
  print("weight: $weight");
  print("names: $names"); 
  print("Converted names to double: $v, Type of v: ${v.runtimeType}"); 
  print("age: $age");
  
  
  double trapezeArea = ((10 + 20) * 4) / 2;
  print("Area $trapezeArea");
  if(trapezeArea > 3 && trapezeArea < 5){
    print("First!");
  }else if(trapezeArea > 60 && trapezeArea < 70 || trapezeArea < 8){
     print("Second!");
  }else{
    print("No one");
  }
  
  for(int i = 0; i < trapezeArea; i++){
    print("Ainda menor");
  }
  
  print(avulso());
}

int avulso(){
  int value = 0;
  do{
    value ++;
  }while(value < 10);
  return value;
}
