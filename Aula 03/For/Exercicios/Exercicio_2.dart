import 'dart:io';

void main(){
  List<String> nomes = ['Ana', 'Bruno', 'Nicolas'];
  int qtd = 0;
  for(var i in nomes){
    stdout.write("A pessoa ${i} está presente? (sim/não)");
    String? resposta = stdin.readLineSync();
    
    if (resposta == "sim"){
      qtd += 1;
    }
    else{
      print("Era para estar presente mas ok");
    }
  }
  print("Quantidade de pessoas = $qtd");

}