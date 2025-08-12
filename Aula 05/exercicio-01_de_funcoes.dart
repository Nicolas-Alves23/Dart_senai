import 'dart:io';

void main(){
  stdout.write("Qual o valor do seu produto? ");
  double produto_price = double.parse(stdin.readLineSync()!);

  stdout.write("Qual a porcentagem do desconto? ");
  double desconto = double.parse(stdin.readLineSync()!);

  double calculo = calcularDesconto( produto_price, desconto);
  print("O desconto foi calculado = R\$${calculo}");
}

double calcularDesconto(double produto, double desconto){
  return produto - (produto * desconto/100) ;
}