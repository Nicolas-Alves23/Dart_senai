import 'dart:io';

void main(){
try {
  stdout.write("Digite seu nome: ");
  int nome = int.parse(stdin.readLineSync()!);
}on FormatException{ // resposta personalizada
  print("só numeros");
}finally{
  print("falou");
}

}
// catch apresenta o erro com a variavel erro que fica logo dentro do parenteses