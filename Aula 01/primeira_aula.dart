import 'dart:io';       // sempre importar isso no início do arquivo


void main() { // função obrigatória para o funcionamento do código

  print("Digite seu nome:");
  String? nome1 = stdin.readLineSync(); // o ? permite nulo

  if (nome1 == null) {
    print("Nome não pode ser nulo!");
    return;
  }

  String nome2 = nome1.toLowerCase(); // não precisa do ! se já tratou null

  print("Olá campeão, seu nome é $nome1");

  if (nome2 == "nicolas") {
    print("Você é legal");
  } else if (nome2 == "adrian") {
    print("Você é aceitável");
  } else {
    print("Você é normal");
  }
}
