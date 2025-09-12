import 'dart:io';

// Classe base
abstract class Animal {
  String nome;
  String especie;
  String porte;

  Animal(this.nome, this.especie, this.porte);

  void emitirSom();
  void alimentar();

  @override
  String toString() {
    return "Nome: $nome | Espécie: $especie | Porte: $porte";
  }
}

// Subclasses
class Leao extends Animal {
  Leao(String nome, String porte) : super(nome, "Leão", porte);

  @override
  void emitirSom() => print("$nome (Leão) rugiu: Rooooar!");

  @override
  void alimentar() => print("$nome (Leão) foi alimentado com carne.");
}

class Elefante extends Animal {
  Elefante(String nome, String porte) : super(nome, "Elefante", porte);

  @override
  void emitirSom() => print("$nome (Elefante) trombeteou: PRUUU!");

  @override
  void alimentar() => print("$nome (Elefante) foi alimentado com frutas e capim.");
}

class Papagaio extends Animal {
  Papagaio(String nome, String porte) : super(nome, "Papagaio", porte);

  @override
  void emitirSom() => print("$nome (Papagaio) falou: Olá, tudo bem?");

  @override
  void alimentar() => print("$nome (Papagaio) foi alimentado com sementes.");
}

// Lista de animais
List<Animal> animais = [];

// Funções do sistema
void cadastrarAnimal() {
  print("Digite o nome do animal:");
  String nome = stdin.readLineSync() ?? "";

  print("Escolha a espécie (1 - Leão | 2 - Elefante | 3 - Papagaio):");
  String? escolha = stdin.readLineSync();

  print("Informe o porte (pequeno, médio, grande):");
  String porte = stdin.readLineSync() ?? "médio";

  Animal? novoAnimal;
  switch (escolha) {
    case "1":
      novoAnimal = Leao(nome, porte);
      break;
    case "2":
      novoAnimal = Elefante(nome, porte);
      break;
    case "3":
      novoAnimal = Papagaio(nome, porte);
      break;
    default:
      print("Espécie inválida.");
      return;
  }

  animais.add(novoAnimal);
  print("✅ Animal cadastrado com sucesso!");
}

void listarAnimais() {
  if (animais.isEmpty) {
    print("Nenhum animal cadastrado.");
  } else {
    print("\n📋 Lista de animais:");
    for (int i = 0; i < animais.length; i++) {
      print("[$i] ${animais[i]}");
    }
  }
}

void editarAnimal() {
  listarAnimais();
  print("Digite o índice do animal que deseja editar:");
  int? indice = int.tryParse(stdin.readLineSync() ?? "");
  if (indice == null || indice < 0 || indice >= animais.length) {
    print("Índice inválido.");
    return;
  }

  print("Digite o novo nome:");
  animais[indice].nome = stdin.readLineSync() ?? animais[indice].nome;

  print("Digite o novo porte:");
  animais[indice].porte = stdin.readLineSync() ?? animais[indice].porte;

  print("✅ Dados atualizados com sucesso!");
}

void removerAnimal() {
  listarAnimais();
  print("Digite o índice do animal que deseja remover:");
  int? indice = int.tryParse(stdin.readLineSync() ?? "");
  if (indice == null || indice < 0 || indice >= animais.length) {
    print("Índice inválido.");
    return;
  }

  animais.removeAt(indice);
  print("❌ Animal removido com sucesso!");
}

void filtrarAnimais() {
  print("Deseja filtrar por (1 - Espécie | 2 - Porte):");
  String? escolha = stdin.readLineSync();

  if (escolha == "1") {
    print("Digite a espécie (Leão, Elefante, Papagaio):");
    String especie = stdin.readLineSync() ?? "";
    var filtrados = animais.where((a) => a.especie.toLowerCase() == especie.toLowerCase()).toList();
    if (filtrados.isEmpty) {
      print("Nenhum animal encontrado dessa espécie.");
    } else {
      print("Animais da espécie $especie:");
      filtrados.forEach(print);
    }
  } else if (escolha == "2") {
    print("Digite o porte (pequeno, médio, grande):");
    String porte = stdin.readLineSync() ?? "";
    var filtrados = animais.where((a) => a.porte.toLowerCase() == porte.toLowerCase()).toList();
    if (filtrados.isEmpty) {
      print("Nenhum animal encontrado desse porte.");
    } else {
      print("Animais de porte $porte:");
      filtrados.forEach(print);
    }
  } else {
    print("Opção inválida.");
  }
}

// Menu interativo
void main() {
  while (true) {
    print("""
===== MENU ZOOMANGE =====
1 - Cadastrar animal
2 - Listar animais
3 - Editar animal
4 - Remover animal
5 - Filtrar animais
6 - Emitir som de todos
7 - Alimentar todos
0 - Sair
=========================
""");

    String? opcao = stdin.readLineSync();

    switch (opcao) {
      case "1":
        cadastrarAnimal();
        break;
      case "2":
        listarAnimais();
        break;
      case "3":
        editarAnimal();
        break;
      case "4":
        removerAnimal();
        break;
      case "5":
        filtrarAnimais();
        break;
      case "6":
        animais.forEach((a) => a.emitirSom());
        break;
      case "7":
        animais.forEach((a) => a.alimentar());
        break;
      case "0":
        print("👋 Saindo do sistema...");
        return;
      default:
        print("Opção inválida!");
    }
  }
}
