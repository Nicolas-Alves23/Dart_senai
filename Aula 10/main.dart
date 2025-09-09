import 'dart:io';
import 'Carro.dart';

void main(){
  Carro UPTESLA = Carro(modelo: "UPTESLA NÃO AGREDE TODOS");
  UPTESLA.alterar_velocidade = 20;
  print(UPTESLA.mostrar_velocidade);

}