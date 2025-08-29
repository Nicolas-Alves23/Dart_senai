import 'dart:io';

class Veiculo {
String modelo;
String marca;
int ano;
//construtor
Veiculo({
  required this.modelo,
  required this.marca,
  required this.ano
});
}

class Carro extends Veiculo{
  int? qt_portas;
  Carro({
    required String modelo,
    required String marca,
    required int ano, this.qt_portas}): super(modelo: modelo, marca: marca, ano: ano);
}

void main(){
  Carro Civic = Carro(modelo: "2", marca: "Carro", ano: 2020);
}