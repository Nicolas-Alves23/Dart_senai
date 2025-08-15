import 'dart:io';

void main(){
stdout.write("Quantos usuários você vai cadastrar");
int x = int.parse(stdin.readLineSync()!);
for (int i = 1 ; i == x ; i++){
  try{
    stdout.write("Nome:");
    String? nome = stdin.readLineSync();
    while (nome == null || nome.trim().isEmpty){
      print("Dados incorretos repita");
      nome = stdin.readLineSync();
    }
  }catch (erro){
    print("O erro é este $erro");
  }finally{
    print("Muito obrigado pelo acesso");
  }
}
}