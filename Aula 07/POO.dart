// Classes são moldes para algo 
import 'dart:io';

import 'classecachorro.dart';

void main(){
  // Criando o objeto (humano)
  Humano Nicolas = Humano("Azul", "Vinicin", 20, "Topete");
  Cachorro Cleitin = Cachorro("Cleitin");
  // Passandoas informações

// Caso não exista um construtor é assim que devemos passar

  // Nicolas.cor_olho = "Castanho";
  // Nicolas.nome = "Nicolas Vilela Barros";
  // Nicolas.idade = 19;
  // Nicolas.cabelo = "Cacheado";
  // print(Nicolas.cor_olho);
  // print(Nicolas.nome);
  // print(Nicolas.idade);
  // print(Nicolas.cabelo);

  
  // Humano Adrian = Humano();
  // // Passandoas informações
  // Adrian.cor_olho = "Castanho";
  // Adrian.nome = "Adrian";
  // Adrian.idade = 19;
  // Adrian.cabelo = "sla";
  // print(Adrian.cor_olho);
  // print(Adrian.nome);
  // print(Adrian.idade);
  // print(Adrian.cabelo);

  
  // Humano Bruno = Humano();
  // // Passandoas informações
  // Bruno.cor_olho = "sla";
  // Bruno.nome = "Bruno";
  // Bruno.idade = 19;
  // Bruno.cabelo = "sla";
  // print(Bruno.cor_olho);
  // print(Bruno.nome);
  // print(Bruno.idade);
  // print(Bruno.cabelo);


}

class Humano{ //Fazer como padrão com a primeira letra maiuscula (não há problema em fazer com uma letra minuscula funciona da mesma forma)
  String cor_olho = "";
  String nome = "";
  int idade = 0;
  String cabelo = "";
  Humano(this.cor_olho, this.nome, this.idade, this.cabelo);
}