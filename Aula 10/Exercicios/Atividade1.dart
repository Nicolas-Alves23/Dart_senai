import 'dart:io';

class Animal {
  String _nome;

  Animal({required String nome}) : _nome = nome;

  String get nome => _nome;

  set nome(String novoNome) {
    if (novoNome.isEmpty) {
      print("Nome inválido!");
    } else {
      _nome = novoNome;
      print("Nome atualizado para $_nome!");
    }
  }

  void falar() {
    print("$_nome está emitindo um som...");
  }
}

class Cachorro extends Animal {
  Cachorro({required String nome}) : super(nome: nome);

  @override
  void falar() {
    print("$nome diz: Au Au!");
  }
}

class Gato extends Animal {
  Gato({required String nome}) : super(nome: nome);

  @override
  void falar() {
    print("$nome diz: Miau!");
  }
}

class Papagaio extends Animal {
  Papagaio({required String nome}) : super(nome: nome);

  @override
  void falar() {
    print("$nome diz: Olá!");
  }
}

void main() {
  List<Animal> animais = [
    Cachorro(nome: "Rex"),
    Gato(nome: "Mimi"),
    Papagaio(nome: "Loro")
  ];

  for (var animal in animais) {
    animal.falar();
  }
}
