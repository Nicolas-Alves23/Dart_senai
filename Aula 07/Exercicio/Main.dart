import 'dart:io';
import 'ClasseProduto.dart';

void main(){
  Produto Coxinha = Produto("Coxinha", 10.00, 5);
  // Antes da subtração 5
  Coxinha.subtrair_estoque();
  // apos 4
  print(Coxinha.estoque);
  
}