import 'dart:io';

void main(){
    double salarioacumulado = 0.0;
    int i = 0;
    while( i < 3 ){
      print("Digite o salário do ${i+1}º mês ");
      String? salario = stdin.readLineSync();
      double salariocovertido = double.parse(salario!);
      if(salariocovertido < 0 ){
        print("Digite um número positivo");
        continue;
      }
      salarioacumulado += salariocovertido;
      i++;
    }
    double mediasalario = salarioacumulado / 3;
    
     if(mediasalario >= 2000.0){
      print("Melhorou bastante");
    }
    else if(mediasalario <= 1999.9 && mediasalario >= 1000.0){
      print("Agora estamos melhor");
    }
    else if(mediasalario <= 999.9 && mediasalario >=500.9){
      print("Precisa de um aumento mas tudo bem");
    }
    else if(mediasalario <= 500.0){
      print("Lute pelos seus direitos");
    }
}