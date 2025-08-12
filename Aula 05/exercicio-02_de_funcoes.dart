import 'dart:io';

void main(){
  stdout.write("Qual a sua idade? ");
  int idade = int.parse(stdin.readLineSync()!);

  if (ehMaiordeidade(idade) == true){
    print("Maior de idade");
  }else{
    print("menor de idade");
  }
}

bool ehMaiordeidade(int idade){
if (idade >=18){
  return true;
}else{
  return false;
}
}