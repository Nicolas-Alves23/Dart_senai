import 'dart:io';

void main(){
  print("Digite sua idade:");
  String? entrada = stdin.readLineSync();
  int idade =int.parse(entrada!); // Converte o valor do input 

  if(idade >= 18){
    print ("Você pode dirigir");
  }
  else{
    print("Você deve beber toddynho e pegar ");
  }

}