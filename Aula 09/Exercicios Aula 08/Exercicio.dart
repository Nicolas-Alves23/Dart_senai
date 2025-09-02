import 'dart:io';

class Animal{
  String nome;
  int ano;

  Animal({
    required this.nome,
    required this.ano
  });
}

class Cachorro extends Animal{
  String raca;
  Cachorro({
    required String nome,
    required int ano,
    required this.raca
  }): super(nome: nome, ano: ano);

  void fazerSom(){
    print("Auau");
  }
}
class Gato extends Animal{
  String cor;
  Gato({
    required String nome,
    required int ano,
    required this.cor
  }): super(nome: nome, ano: ano);

  void fazerSom(){
    print("Miau");
  }
}

void main(){
  Gato laranja = Gato(nome: "Gatuno", ano: 4, cor: "Preto");
  laranja.fazerSom();

  Cachorro dakota = Cachorro(nome: "Dakota", ano: 10, raca: "Labrador");
  dakota.fazerSom();
}