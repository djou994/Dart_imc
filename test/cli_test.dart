import 'package:cli/cli.dart';
import 'package:cli/person.dart';
import 'package:test/test.dart';

void main() {
  group('verifyLevel', () {
    test('deve retornar "Magreza grave" para um IMC de 15', () {
      Person person = Person('João', 40, 1.60);
      expect(verifyLevel(person), 'Magreza grave');
    });

    test('deve retornar "Magreza moderada" para um IMC de 16', () {
      Person person = Person('Maria', 45, 1.65);
      expect(verifyLevel(person), 'Magreza moderada');
    });

    test('deve retornar "Magreza leve" para um IMC de 17', () {
      Person person = Person('José', 50, 1.70);
      expect(verifyLevel(person), 'Magreza leve');
    });

    test('deve retornar "Magreza Saudavel" para um IMC de 20', () {
      Person person = Person('Ana', 50, 1.60);
      expect(verifyLevel(person), 'Saudavel');
    });

    test('deve retornar "Sobrepeso" para um IMC de 25', () {
      Person person = Person('Pedro', 70, 1.60);
      expect(verifyLevel(person), 'Sobrepeso');
    });

    test('deve retornar "Obesidade Grau I" para um IMC de 30', () {
      Person person = Person('Luiza', 80, 1.60);
      expect(verifyLevel(person), 'Obesidade Grau I');
    });

    test('deve retornar "Obesidade Grau II(Severa)" para um IMC de 35', () {
      Person person = Person('Carlos', 100, 1.60);
      expect(verifyLevel(person), 'Obesidade Grau II(Severa)');
    });

    test('deve retornar "Obesidade Grau III(Mórbida)" para um IMC de 40', () {
      Person person = Person('Rita', 110, 1.60);
      expect(verifyLevel(person), 'Obesidade Grau III(Mórbida)');
    });
  });
}
