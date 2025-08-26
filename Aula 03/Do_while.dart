import 'dart:io';

void main(){
  String continuar = '';
  String msg = """
       
    Me informe a forma de pagamento:
            1 - Credito
            2 - Debito
            3-  Pix
 """;
  do {
    print(msg);
    print("Escolha um número de 1 a 3 para continuar");
    continuar = stdin.readLineSync()!;
  } while (continuar == '1' || continuar == '2' || continuar == '3');
}