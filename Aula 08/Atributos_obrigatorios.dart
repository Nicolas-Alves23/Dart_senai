import 'dart:io';

class Products{
  String nome; // Atributo obrigatorio
  double price;
  String? description; // Atributo opcional

  Products({required this.nome , required this.price , this.description});

}

void main(){
  Products Coxinha = Products(nome: "Coxinha", price: 15.00);

  print(Coxinha.nome);
}