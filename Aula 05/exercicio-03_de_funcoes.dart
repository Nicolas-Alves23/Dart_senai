import 'dart:io';

void main(){
  stdout.write("Temperatura em celsius = ");
  double celsius = double.parse(stdin.readLineSync()!);

  double conta = celciusParaFahrenheit(celsius);

  print(conta);

}

double celciusParaFahrenheit(double celsius){
  return celsius * 9/5 + 32;
}