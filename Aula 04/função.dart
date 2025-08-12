// import 'dart:io';

// int soma(int a, int b){
//   return a+b;
// }


// void main() {
//   int conta = soma(5 , 5);
//   print(conta);
// }


// void dizerOla() { // Aqui temo uma função 
//   print('Olá, mundo!'); // irá retornar o texto "Olá, mundo"
//   print(1+1); // Soma Simples porém sem valores que recebemos 
// }

// int soma (int x, int y){ // 
//   return x + y; // Função com parâmetro e retorno
// }

// código com todos as funções

// -------------------------------------------
// Guia completo: Tipos de funções em Dart
// -------------------------------------------

void main() {
  // 1. Sem parâmetro e sem retorno
  dizerOla();

  // 2. Com parâmetro e sem retorno
  cumprimentar("Lucas");

  // 3. Sem parâmetro e com retorno
  print(mensagemPadrao());

  // 4. Com parâmetro e com retorno
  print(somar(3, 4));

  // 5. Parâmetro opcional posicional
  print(apresentar("Ana"));
  print(apresentar("Ana", "Silva"));

  // 6. Parâmetro nomeado
  mostrarDados(nome: "Carlos", idade: 25);
  mostrarDados(nome: "Maria");

  // 7. Parâmetros com valor padrão
  calcularArea(largura: 5);
  calcularArea();

  // 8. Função de uma linha (Arrow Function)
  print(quadrado(6));

  // 9. Função anônima (lambda)
  var lista = ["A", "B", "C"];
  lista.forEach((item) {
    print("Item: $item");
  });

  // 10. Função como parâmetro
  executarAcao(() => print("Executando ação!"));

  // 11. Função que retorna outra função
  var dobrar = multiplicador(2);
  print(dobrar(5));

  // 12. Função assíncrona
  buscarDados();
}

// ----------------------
// DEFINIÇÕES DAS FUNÇÕES
// ----------------------

// 1. Sem parâmetro e sem retorno
void dizerOla() {
  print("Olá, mundo!");
}

// 2. Com parâmetro e sem retorno
void cumprimentar(String nome) {
  print("Olá, $nome!");
}

// 3. Sem parâmetro e com retorno
String mensagemPadrao() {
  return "Bem-vindo!";
}

// 4. Com parâmetro e com retorno
int somar(int a, int b) {
  return a + b;
}

// 5. Parâmetro opcional posicional
String apresentar(String nome, [String? sobrenome]) {
  return sobrenome != null ? "$nome $sobrenome" : nome;
}

// 6. Parâmetro nomeado
void mostrarDados({required String nome, int idade = 0}) {
  print("Nome: $nome, Idade: $idade");
}

// 7. Parâmetros com valor padrão
void calcularArea({double largura = 1, double altura = 1}) {
  print("Área: ${largura * altura}");
}

// 8. Função de uma linha (Arrow Function)
int quadrado(int x) => x * x;

// 10. Função como parâmetro
void executarAcao(Function acao) {
  acao();
}

// 11. Função que retorna outra função
Function multiplicador(int fator) {
  return (int valor) => valor * fator;
}

// 12. Função assíncrona
Future<void> buscarDados() async {
  await Future.delayed(Duration(seconds: 2));
  print("Dados recebidos!");
}
