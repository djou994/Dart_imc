import 'dart:io';

import 'package:cli/person.dart';

String calculate() {
  String name;
  double peso;
  double altura;
  try{
    print("Informe o nome");
    name = stdin.readLineSync()!;
    print("Informe o peso");
    peso = double.parse(stdin.readLineSync()!.replaceAll(",", "."));
    print("Informe a altura");
    altura = double.parse(stdin.readLineSync()!.replaceAll(",", "."));

    Person person = Person(name, peso, altura);
    String result = verifyLevel(person);
    return result;
  }on Exception {
    throw Exception("Houve um erro durante a execução");
  }
}

String verifyLevel(Person person) {
  var imc = person.calculateImc();
  String result = "";
  if(imc < 16){
    result = "Magreza grave";
  }else if(imc < 17){
    result = "Magreza moderada";
  }else if(imc < 18.5){
    result = "Magreza leve";
  }else if(imc < 25){
    result = "Saudavel";
  }else if(imc < 30){
    result = "Sobrepeso";
  }else if(imc < 35){
    result = "Obesidade Grau I";
  }else if(imc < 40){
    result = "Obesidade Grau II(Severa)";
  }else if(imc >= 40){
    result = "Obesidade Grau III(Mórbida)";
  }
  return result;
}
