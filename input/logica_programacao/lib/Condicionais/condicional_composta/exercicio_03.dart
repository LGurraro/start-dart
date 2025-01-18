//TODO: Crie um programa que solicite o nome,
//a nota 1 e a nota 2 de um(a) aluno(a).
// Em seguida, o programa deve calcular a média aritmética
//e, se o(a) aluno(a) ficar com nota maior ou igual a 6.0,
// o programa deve mostrar a mensagem "APROVADO(A)".
//Se a nota for menor que 6.0, o programa deve apresentar a mensagem "EM RECUPERAÇÃO".

import 'dart:io';

void main() {
  print('Por favor, digite o nome do(a) aluno(a):');
  String nome = stdin.readLineSync() as String;

  print('Por gentileza, digite a sua primeira nota:');
  String nota1Leitura = stdin.readLineSync() as String;
  double nota1 = double.parse(nota1Leitura);

  print('Por gentileza, digite a sua segunda nota:');
  String nota2Leitura = stdin.readLineSync() as String;
  double nota2 = double.parse(nota2Leitura);

  int mediaAprovacao = 6;

  var media = (nota1 + nota2) / 2;
  if (media >= mediaAprovacao) {
    print('Parabéns,$nome você foi APROVADO(A) com média $media');
  } else {
    print('Infelizmente, $nome você está de RECUPERAÇÃO com média $media');
  }
}
