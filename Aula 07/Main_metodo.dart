import 'dart:io';

import 'ClasseCarro.dart';

void main() {
  Carro Mustang = Carro(4, "Preta", "AJA1800", "Ford", "Mustang", 150);
  // Antes de utilizar o método a velocidade = 150
  Mustang.acelerar();
  // Depois de utilizar o método a velocidade = 160
  print(Mustang.velocidade);
}