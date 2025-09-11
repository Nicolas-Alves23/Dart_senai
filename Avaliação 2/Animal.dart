import 'dart:io';

class Animal {
  String nome;
  int idade;
  String? descricao;

  Animal({required this.nome, required this.idade});

  void emitir_som(){
    print("Faz som");
  }

  void falar_nome(String nome){
    print("Meu nome é $nome");
  }
}

class Pequeno_Porte extends Animal{
  double peso;
  Pequeno_Porte({required this.peso, required String nome, required int idade}): super(idade: idade, nome: nome);
}

class Medio_Porte extends Animal{
  double peso;
  Medio_Porte({required this.peso, required String nome, required int idade}): super(idade: idade, nome: nome);
}

class Grande_Porte extends Animal{
  double peso;
  Grande_Porte({required this.peso, required String nome, required int idade}): super(idade: idade, nome: nome);
}