//TODO:Crie um programa que solicite uma letra ao usuário e diga se é uma vogal ou não vogal.

import 'dart:io';

void main() {
  print('Olá, seja bem-vindo(a)!');
  print('Por favor, digite uma letra:');
  var letraDigitada = stdin.readLineSync()!.toLowerCase();

  switch (letraDigitada) {
    case 'a':
      print('A letra digitada é uma vogal.');
      break;
    case 'e':
      print('A letra digitada é uma vogal.');
      break;
    case 'i':
      print('A letra digitada é uma vogal.');
      break;
    case 'o':
      print('A letra digitada é uma vogal.');
      break;
    case 'u':
      print('A letra digitada é uma vogal.');
      break;
    default:
      print('A letra digitada não é uma vogal.');
      break;
  }
}
