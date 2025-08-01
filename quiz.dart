import 'dart:io';

void main(){
  print("Digite sua idade:");
  String? input = stdin.readLineSync();
  int idade =int.parse(input!); // Converte o valor do input 

  if(idade >= 18){
    print ("Maior de idade");
  }
  else{
    print("Menor de idade");
  }

}