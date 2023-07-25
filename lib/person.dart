import 'dart:math';

class Person{
  String _nome = "";
  double _peso = 0;
  double _altura = 0;


  Person(this._nome, this._peso, this._altura);

  double calculateImc(){
    return (_peso / pow(_altura, 2));
  }

  double get altura => _altura;

  set altura(double value) {
    _altura = value;
  }

  double get peso => _peso;

  set peso(double value) {
    _peso = value;
  }

  String get nome => _nome;

  set nome(String value) {
    _nome = value;
  }
}