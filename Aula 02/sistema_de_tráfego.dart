import 'dart:io';

void main(){
  String msg = """
      O motorista tem como pagar de 3 formas diferentes
            1 - Pagar à vista (10% de desconto)
            2 - Parcelar em 2x (sem juros)
            3 - Parcelar em 3x (com 10% de juros)
                    Escolha entre estes
  """;
  double multa = 0.0;
  print("Digite o nome do motorista:");
  String? nome = stdin.readLineSync();

  print("Qual era a velocidade que o motorista estava?");
  double velocidade = double.parse(stdin.readLineSync()!);

  if(velocidade <= 60.0){
    print("A velocidade (${velocidade}) do motorista ${nome} não faça o causar uma inflação");
  }

  if(velocidade >= 61.0 && velocidade <= 80.0){
    multa = 50.0;
    print("Inflação leve multa igual à = 50 Reais");

    }
  else if (velocidade >= 81.0 && velocidade <= 100.0){
    multa = 60.0;
    print("Inflação média multa igual à = 60 Reais");
  }
  else if (velocidade > 100.0){
    multa = 80.0;
    print("Inflação grave multa igual à = 80 Reais");
  }

    print(msg);
    int opcao = int.parse(stdin.readLineSync()!);

    switch(opcao){
      case 1:
        double a_pagar = multa - (multa * 0.10) ;
        print("${nome} O valor do à pagar é ${a_pagar}");
        break;
      case 2:
        double a_pagar = multa / 2;
        print("${nome} Neste mês você vai pagar ${a_pagar} reais e no proximo ${a_pagar} reais");
        break;
      case 3: 
        double a_pagar = (multa * 0.10) + multa;
        print("${nome} O valor do à pagar é ${a_pagar}");
        break;
      default:
        ("opções invalidas");
  }
}