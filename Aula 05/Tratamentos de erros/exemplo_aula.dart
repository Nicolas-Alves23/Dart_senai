import 'dart:io';

void main(){

  stdout.write("Digite seu nome: ");
  String? nome = stdin.readLineSync();

  while (nome == null || nome.trim().isEmpty) {
    print("dados incorretos");
    nome = stdin.readLineSync();
    
  }
  print("Logado com sucesso");
}