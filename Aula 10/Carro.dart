import 'dart:io';

class Carro {
  String modelo;
  int _velocidade = 0;
  Carro({required this.modelo});

  int get mostrar_velocidade{
    return _velocidade;
  }

  set alterar_velocidade (int v){
    if (v < 0){
      print("Velocidade invalida");
    }else{
      _velocidade = v;
      print("Boa campeão");
    }
  }
}