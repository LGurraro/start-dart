//TODO:Crie um programa que verifique se um candidato está apto a tirar a carteira de motorista do tipo D. Os requisitos são:
// Ter idade maior que 21 anos;
// Estar habilitado pelo menos dois anos com a carteira B ou um ano com a carteira C;
// Não ter nenhuma infração nos últimos doze meses.

import 'dart:io';

void main() {
  print('Seja Bem-vindo(A) ao sistema de habilitação para a carteira D');
  print('Por favor, digite a sua idade:');
  var idadeDigitada = int.parse(stdin.readLineSync()!);

  print('Você está habilitado há quantos anos?');
  var habilitacaoDigitada = int.parse(stdin.readLineSync()!);

  print('Você tem alguma infração nos últimos 12 meses? (s/n)');
  var respostaDigitada = stdin.readLineSync()!.toLowerCase();

  if (idadeDigitada > 21 && habilitacaoDigitada >= 2 && respostaDigitada == 'n') {
    print('Você está apto a tirar a carteira de motorista do tipo D.');
  } else {
    print('Você não está apto a tirar a carteira de motorista do tipo D.');
  }
}
