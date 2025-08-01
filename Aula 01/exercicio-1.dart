import 'dart:io';

void main(){
  double notaacumulada = 0.0;
  for (int i = 0 ; i <= 4; i++){
    print("Qual é a sua nota ?");
    String? nota = stdin.readLineSync();
    double notas = double.parse(nota!);
    notaacumulada += notas; 
  }
  double aprovacao = notaacumulada / 5;

  if (aprovacao >=5.0){
    print("Aluno aprovado com a seguinte nota: $aprovacao");
  } else if (aprovacao <= 3.9) {
    print("Reprovado");
  } else if (aprovacao >= 4.0){
    print("Recuperação");
  }

  print("Sua nota $aprovacao");
}