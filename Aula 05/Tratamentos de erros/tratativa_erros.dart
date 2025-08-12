import 'dart:async'; // Para TimeoutException, Future, etc.

void main() async {
  /*
  =============================
   GUIA DE TRATAMENTO DE ERROS E VERIFICAÇÕES EM DART
  =============================
  */

  // =============================
  // 1. TRATAMENTO DE NULL (Null Safety)
  // =============================

  // Por padrão, variáveis não podem ser null
  String nomeNaoNulo = "Ana"; // nunca null
  print(nomeNaoNulo);

  // Para permitir null, use '?'
  String? nomeNulo; // pode ser null

  // Verificação de null
  if (nomeNulo != null) {
    print(nomeNulo.toUpperCase());
  }

  // Operadores úteis para null:
  // '??' → valor padrão caso seja null
  print(nomeNulo ?? "Sem nome");

  // '?.' → acessa propriedade/método somente se não for null
  print(nomeNulo?.toUpperCase());

  // '??=' → atribui valor se for null
  nomeNulo ??= "Padrão";

  print(nomeNulo);

  // =============================
  // 2. TRATAMENTO DE EXCEÇÕES (try / catch / finally)
  // =============================
  try {
    var numero = int.parse("abc"); // Vai gerar FormatException
  } catch (e) {
    print("Ocorreu um erro: $e");
  } finally {
    print("Bloco 'finally' executado (sempre roda)");
  }

  // Capturando tipo específico de erro
  try {
    var lista = [1, 2];
    print(lista[5]); // RangeError
  } on RangeError {
    print("Índice fora do alcance");
  }

  // Capturando erro + stacktrace
  try {
    var x = 1 ~/ 0; // Divisão inteira por zero
  } catch (e, s) {
    print("Erro: $e");
    print("Stacktrace: $s");
  }

  // =============================
  // 3. VERIFICAÇÃO COM .isEmpty e .isNotEmpty
  // =============================
  var texto = "";
  if (texto.isEmpty) {
    print("Texto vazio");
  }

  var lista = [];
  if (lista.isNotEmpty) {
    print("Lista tem itens");
  }

  // Antes de usar isEmpty, garanta que não seja null
  String? textoOpcional;
  if ((textoOpcional ?? "").isEmpty) {
    print("Vazio ou null");
  }

  // =============================
  // 4. ASSERT (Checagem em tempo de desenvolvimento)
  // =============================
  // Usado para debug, não afeta produção compilada
  String? nomeTeste = "Ana";
  assert(nomeTeste != null, "O nome não pode ser null");

  // =============================
  // 5. THROW (Lançar exceção manualmente)
  // =============================
  try {
    login("", "");
  } catch (e) {
    print("Erro no login: $e");
  }

  // =============================
  // 6. ERROS ASSÍNCRONOS (try/catch com async/await)
  // =============================
  await buscarDados();

  // =============================
  // 7. OUTRAS DICAS
  // =============================
  // - 'late' → variável não-nula inicializada depois
  late String nomeLate;
  nomeLate = "Valor inicial";
  print(nomeLate);

  // - Validação defensiva → verificar tudo antes de usar
  String? dado;
  if (dado != null && dado.isNotEmpty) {
    print("Pronto para usar: $dado");
  }

  // - Tipos específicos de exceções:
  //   * FormatException
  //   * RangeError
  //   * TimeoutException
}

void login(String usuario, String senha) {
  if (usuario.isEmpty || senha.isEmpty) {
    throw Exception("Usuário e senha são obrigatórios");
  }
}

Future<void> buscarDados() async {
  try {
    await Future.delayed(Duration(seconds: 1));
    throw Exception("Falha na requisição");
  } catch (e) {
    print("Erro: $e");
  }
}
