import 'dart:io';

void main(){
  stdout.write("Valor da Compra:");
  double total = double.parse(stdin.readLineSync()!);

  stdout.write("Quantidade de parcelas:");
  int parcelas = int.parse(stdin.readLineSync()!);

  for(int i = 0 ; i < parcelas ; i++){
    print("${i+1}º Parcela = ${total/parcelas}");


  }

}
