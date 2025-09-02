import 'dart:io';

class Conta{
  String nome_titular;
  double saldoInicial;
  double? investimento;

  Conta({
    required this.nome_titular,
    required this.saldoInicial,
    this.investimento
  });
}

class contaCorrente extends Conta{
  double? limite_cartao;
  contaCorrente({
    required String nome_titular,
    required double saldoInicial,
    this.limite_cartao
  }): super(nome_titular: nome_titular, saldoInicial: saldoInicial);

}
class contaPoupanca extends Conta{
  double taxa_Rendimento;
  contaPoupanca({
    required String nome_titular,
    required double saldoInicial,
    required this.taxa_Rendimento
  }): super(nome_titular: nome_titular, saldoInicial: saldoInicial);

  void atualizar(){
    saldoInicial += taxa_Rendimento;
    print(saldoInicial);
  }
}

void main(){
  contaCorrente Nicolas = contaCorrente(nome_titular: "Nicolas", saldoInicial: 3000.00, limite_cartao: 1200.00);

  contaPoupanca Nicolas_investidor = contaPoupanca(nome_titular: "Nicolas", saldoInicial: 3000.00, taxa_Rendimento: 1500.00);
  Nicolas_investidor.atualizar();
}