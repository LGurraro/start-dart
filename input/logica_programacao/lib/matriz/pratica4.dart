// TODO: Você foi contratada(o) para desenvolver um sistema de exibição do boletim digital de um curso de inglês. 
// Seu sistema deve armazenar e apresentar a informação de 15 alunos. Cada aluno passa por 6 avaliações em cada 
// semestre (prova oral, prova escrita e conversação por bimestre).
// Além da nota dessas avaliações, seu sistema ainda deve registrar a média final do semestre de cada aluno.

import 'dart:io';


void main() {
// 15 Alunos
  // 6 posições [1,2,3,4,5,6] para notas e 1 posição [7] para média
  var notasAlunos = List.generate(15, (index) => List.filled(7, 0.0));
  // Variavel de controle para soma das notas e média de nota
  var totalNotaAluno = 0.0;

  // Loop de alunos
  for (int aluno = 0; aluno < 2; aluno++) {
    // Loop das notas
    for (int nota = 0; nota < 6; nota++) {
      print('Digite a ${nota + 1} nota do aluno ${aluno +1}: ');
      // Solicitamos a nota
      var notaAlunoStr = stdin.readLineSync() as String;
      // Adicionamos na nossa matriz 
      notasAlunos[aluno][nota] = double.parse(notaAlunoStr);
      // somamos o total da nota
      totalNotaAluno = totalNotaAluno + notasAlunos[aluno][nota];
    }
    // Calculamos a média do aluno e adicionamos na 7 posição
    notasAlunos[aluno][6] = totalNotaAluno / 6;
    // Zeramos a nota
    totalNotaAluno = 0.0;
  }

  for (int aluno = 0; aluno < 2; aluno++) {
    print("Aluno: ${aluno + 1}:");
    for (int nota = 0; nota < 6; nota++) {
      print('Nota prova ${nota + 1}: ${notasAlunos[aluno][nota]}');
    }
    print('A média do aluno ${aluno + 1}: ${notasAlunos[aluno][6]} ');
  }

}