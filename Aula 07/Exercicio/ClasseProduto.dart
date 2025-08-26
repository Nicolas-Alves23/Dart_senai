import 'dart:io';

class Produto{
  String nome = "";
  double preco = 0.0;
  int estoque = 0;
  Produto(this.nome, this.preco, this.estoque);

  void subtrair_estoque(){
    estoque -= 1;
    if (estoque == 0) {
      print("Estoque esgotado para o produto ${nome}");
      
    }
  }
}

