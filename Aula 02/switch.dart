import 'dart:io';

void main(){
  String msg = """
        Bem Vindo ao menu:
              1 - PS5
              2 - Nintendo
              3- PC
 """;
  print(msg);

  print("Escolha:");
  int opcao = int.parse(stdin.readLineSync()!); // antes fazemos com String e convertiamos antes para int, agora conseguimos fazer tudo em uma linha só
  switch(opcao){
    case 1:
      print("4000,00 Reais");
      break;

    case 2:
      print("3000,00 Reais");
      break;

    case 3:
      print("9000,00 Reais");
      break;
    default:
      print("Invalido");
      break;
  }

}