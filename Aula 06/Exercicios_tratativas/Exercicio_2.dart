import 'dart:io';

void main() {
  double? valor; // permite null
  String menu = """
Qual é o método de pagamento?
    1 - Dinheiro
    2 - Cartão de Débito
    3 - Cartão de Crédito
    4 - Pix
Escolha de 1 à 4
""";

  while (valor == null || valor <= 0) {
    stdout.write("Digite o valor: R\$");
    String? input = stdin.readLineSync();
    try {
      valor = double.parse(input!);
      if (valor <= 0) {
        print("O valor deve ser maior que zero.");
      }
    } catch (e) {
      print("Valor inválido. Por favor, digite um número.");
    }
  }

  print("Valor digitado: R\$$valor");


  int escolha = 0;
  do {
    print(menu);
    try {
      escolha = int.parse(stdin.readLineSync()!);
      if (escolha < 1 || escolha > 4) {
        print("Opção inválida! Escolha de 1 à 4.");
      }
    } catch (e) {
      print("Entrada inválida! Digite um número de 1 à 4.");
    }
  } while (escolha < 1 || escolha > 4);

  print("Pagamento selecionado: ${opcaoPagamento(escolha)}");
  print("Tchauuu");
}


String opcaoPagamento(int escolha) {
  switch (escolha) {
    case 1:
      return "Dinheiro";
    case 2:
      return "Cartão de Débito";
    case 3:
      return "Cartão de Crédito";
    case 4:
      return "Pix";
    default:
      return "Opção inválida";
  }
}
