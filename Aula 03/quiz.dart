import 'dart:io';

void main(){
  stdout.write("Idade:"); //stdout.write para fazer o input do lado do print
  String? senha = stdin.readLineSync();

  while (senha != "18") {
    print("Tente novamente");
    senha = stdin.readLineSync();
  }
  print("Acesso liberado");
}