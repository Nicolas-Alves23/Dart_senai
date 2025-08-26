import 'dart:io';

class Carro {
  int rodas = 0;
  String cor = "";
  String placa = "";
  String marca = "";
  String modelo = "";
  int velocidade = 0;
  Carro(this.rodas,  this.cor, this.placa, this.marca, this.modelo, this.velocidade);

void acelerar(){ // Método
  velocidade +=10;
}
}