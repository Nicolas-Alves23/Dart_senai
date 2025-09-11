import 'dart:math'; // para fazer contas matematicas
import 'dart:io';

class Forma {
  double calcularArea() {
    return 0;
  }
}

class Quadrado extends Forma {
  double _lado;

  Quadrado({required double lado}) : _lado = lado;

  double get lado => _lado;

  set lado(double novoLado) {
    if (novoLado <= 0) {
      print("Valor inválido para o lado!");
    } else {
      _lado = novoLado;
      print("Novo valor do lado definido!");
    }
  }

  @override
  double calcularArea() => _lado * _lado;
}

class Retangulo extends Forma {
  double _largura;
  double _altura;

  Retangulo({required double largura, required double altura})
      : _largura = largura,
        _altura = altura;

  double get largura => _largura;
  double get altura => _altura;

  set largura(double nova) {
    if (nova <= 0) {
      print("Largura inválida!");
    } else {
      _largura = nova;
      print("Largura atualizada!");
    }
  }

  set altura(double nova) {
    if (nova <= 0) {
      print("Altura inválida!");
    } else {
      _altura = nova;
      print("Altura atualizada!");
    }
  }

  @override
  double calcularArea() => _largura * _altura;
}

class Circulo extends Forma {
  double _raio;

  Circulo({required double raio}) : _raio = raio;

  double get raio => _raio;

  set raio(double novoRaio) {
    if (novoRaio <= 0) {
      print("Raio inválido!");
    } else {
      _raio = novoRaio;
      print("Raio atualizado!");
    }
  }

  @override
  double calcularArea() => pi * _raio * _raio;
}

void main() {
  List<Forma> formas = [
    Quadrado(lado: 4),
    Retangulo(largura: 5, altura: 3),
    Circulo(raio: 2),
  ];

  for (var forma in formas) {
    print("Área calculada: ${forma.calcularArea()}");
  }
}
