import 'dart:io';

class Pagamento {
  String _tipo;

  Pagamento({required String tipo}) : _tipo = tipo;

  String get tipo => _tipo;

  set tipo(String novoTipo) {
    if (novoTipo.isEmpty) {
      print("Tipo inválido!");
    } else {
      _tipo = novoTipo;
      print("Tipo de pagamento atualizado para $_tipo!");
    }
  }

  void processar() {
    print("Processando pagamento genérico...");
  }
}

class Pix extends Pagamento {
  Pix() : super(tipo: "Pix");

  @override
  void processar() {
    print("Pagamento via Pix concluído!");
  }
}

class CartaoCredito extends Pagamento {
  CartaoCredito() : super(tipo: "Cartão de Crédito");

  @override
  void processar() {
    print("Pagamento no cartão aprovado!");
  }
}

class Boleto extends Pagamento {
  Boleto() : super(tipo: "Boleto");

  @override
  void processar() {
    print("Boleto registrado, aguardando compensação.");
  }
}

void main() {
  Pagamento pagamento;

  int escolha = 1; // simulação (1=Pix, 2=Cartão, 3=Boleto)

  if (escolha == 1) {
    pagamento = Pix();
  } else if (escolha == 2) {
    pagamento = CartaoCredito();
  } else {
    pagamento = Boleto();
  }

  pagamento.processar();
}
