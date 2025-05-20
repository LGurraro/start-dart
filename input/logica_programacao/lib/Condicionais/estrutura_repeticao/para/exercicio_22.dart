//TODO: Crie um programa para ler a nota de 25 alunos de uma turma de lógica de programação.
// Apresente no final da leitura a maior nota, a menor nota e a média das notas.

import 'dart:io';

void main() {
  double maiorNota = 0;
  double menorNota = 0;
  double somaNotas = 0;

  for (var contador = 1; contador <= 25; contador++) {
    print('Por favor digite a nota do aluno:');
    var notaLeitura = stdin.readLineSync() as String;
    var nota = double.parse(notaLeitura);

    if (nota > maiorNota) {
      maiorNota = nota;
    }

    somaNotas = somaNotas + nota;

    if (nota < menorNota) {
      menorNota = nota;
    }
  }

  double media = somaNotas / 25;

  print('A maior nota é: $maiorNota');
  print('A menor nota é: $menorNota');
  print('A média das notas é: $media');
}
