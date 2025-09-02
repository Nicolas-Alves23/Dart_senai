// Conseguir mudar métodos para cada tipo de classe filha

import 'dart:io';


// class Animal {
//     String nome;//não preciso inicializar
//     String raca; 
//     int idade;

//     Animal({required this.nome, required this.raca, required this.idade});


//     void fazerSom(String nome){
//       print("");
//     }
// }

// class Cachorro extends Animal {
//     Cachorro({required String nome, required String raca, required int idade})
//     :super(nome: nome, raca: raca, idade: idade);
    
//     @override
//     void fazerSom(String nome){
//       print("$nome, seu chorro faz Auau");
//     }

// }

// class Gato extends Animal {
//     Gato({required String nome, required String raca, required int idade})
//     :super(nome: nome, raca: raca, idade: idade);

//     @override
//     void fazerSom(String nome){
//         print("Miau Miau");
//     }

// }

// void main(){
//     Cachorro Spike = Cachorro(nome: "Spike", raca:"Beagle", idade: 5 );
//     Spike.fazerSom("Spike");
//     Gato GarfieldMarry = Gato(idade: 10, raca: "Laranja", nome: "Garasdasd...");
//     GarfieldMarry.fazerSom("garfield");

// }

class Veiculos{
  String modelo;
  String cor;
  String marca;

  Veiculos({required this.modelo, required this.cor , required this.marca});

  void mover(bool cnh){
    if (cnh == true){
      print("movendo veiculo");
    }else{
      print("Não pode mover");
    }
  }
}

class Carro extends Veiculos {
  Carro({required String modelo, required String cor , required String marca}): super(cor: cor, modelo: modelo, marca: marca);

  @override
  void mover(bool cnh){
    if (cnh == true){
      print("Ligando carro");
      print("Acelerar");
    }else{
      print("Não pode mover");
    }
  }
}

void main(){
  Carro Bugatti = Carro(modelo: "Divo", cor: "Azul", marca: "Bugatti");
  Bugatti.mover(true);
  Bugatti.mover(false);
}