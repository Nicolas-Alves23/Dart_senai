//iniciando a atividade
import 'dart:io';

void main(){
  String msg = """

              Bom dia!!!!!
  Bem vindo ao supermercado Matão.inc
   Temos diversos itens disponiveis
                  Item:
              1 - Arroz
              2 - Feijão
              3 - Frango
              4 - Queijo
              5 - Pão
  """;
  String msg_criador = """
   ∧,,,∧
 (  ̳• · • ̳)
 /    づCriado por Nicolas
""";
  String cpf = '';
  String estoque = """

           Estoque:
           1 - Arroz
           2 - Feijão
           3 - Frango
           4 - Queijo
           5 - Pão

""";
  List<int> itens_do_cliente = [];
  String continuar = """

      Deseja continuar?
          1 - Sim
          2 -  Não
    Escolha um dos índices =
""";
  int escolha = 0;
  List<String> estoque_loja = ['Arroz', 'Feijão', 'Frango', 'Queijo', 'Pão'];
  List<double> precos = [10.00 , 5.00 , 20.00 , 15.00, 2.00];
  List<String> carrinho_traduzido = [];
  String forma_pagamento = """
                Qual a forma de pagamento?
            1 - Pagar à vista (10% de desconto)
            2 - Parcelar no cartão (10% juros)
            3 - Fiado (15% a mais na proxima compra)
                    Escolha entre estes
  """;
  String msg2 = """

            Agora que você já passou o seu CPF
  o senhor(a) pode escolher algum item dentro do nosso estoque
para escolher um item basta selecionar o número referenciado no indice
""";
  double preco_pagar = 0.00;
  double preco_desconto = 0;
  
  do {
  print(msg);
  stdout.write("Para ter acesso ao nosso super mercado perciso do seu CPF:");
  cpf = stdin.readLineSync()!;

  } while (cpf.length != 11);

  print(msg2);

  do {
  print(estoque);
  stdout.write("Qual o item que você deseja?");

  int opcao = int.parse(stdin.readLineSync()!);
  itens_do_cliente.add(opcao);

  stdout.write(continuar);
  escolha = int.parse(stdin.readLineSync()!);

  } while (escolha  ==  1);

  for (int num in itens_do_cliente){
    carrinho_traduzido.add(estoque_loja [num - 1]);
  }
  print("\nCarrinho");
  for (var n in carrinho_traduzido){
    print('- $n');
  }

  for (int indice in itens_do_cliente){
    preco_pagar += precos[indice - 1];
  }
  print("Você vai pagar R\$$preco_pagar");

  print(forma_pagamento);
  int forma = int.parse(stdin.readLineSync()!);
  while (forma != 1 && forma != 2 && forma != 3) {
    print("Escolha entre 1 a 3");
    forma = int.parse(stdin.readLineSync()!);
  }
  
  switch(forma){
    case 1:
          preco_desconto = preco_pagar - (preco_pagar * 0.10);
          print("Preço que vai pagar R\$$preco_desconto");
          break;
    case 2:
          preco_desconto = preco_pagar + (preco_pagar * 0.10);
          print("Preço que vai pagar R\$$preco_desconto");
          break;
    case 3:
          preco_desconto = preco_pagar + (preco_pagar * 0.15);
          print("Você vai pagar R\$$preco_desconto na próxima vez que vier");
          break;
    default:
          print("sua opção não existe");
          break;
  }
  print(msg_criador);
}

