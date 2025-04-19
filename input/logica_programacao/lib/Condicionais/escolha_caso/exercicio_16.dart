//TODO: Crie um programa que solicite ao usuário um número entre 1 e 12 e apresente na tela o mês correspondente.

import 'dart:io';

void main() {
  print('Olá, seja bem-vindo(a)!');
  print('Vamos descobrir o mês correspondente ao número que você digitar.');
  print('Por favor, digite um número entre 1 e 12:');
  var numeroDigitado = int.parse(stdin.readLineSync()!);

  switch (numeroDigitado) {
    case 1:
      print('Janeiro');
      break;
    case 2:
      print('Fevereiro');
      break;
    case 3:
      print('Março');
      break;
    case 4:
      print('Abril');
      break;
    case 5:
      print('Maio');
      break;
    case 6:
      print('Junho');
      break;
    case 7:
      print('Julho');
      break;
    case 8:
      print('Agosto');
      break;
    case 9:
      print('Setembro');
      break;
    case 10:
      print('Outubro');
      break;
    case 11:
      print('Novembro');
      break;
    case 12:
      print('Dezembro');
      break;
    default:
      print('Número inválido. Por favor, digite um número entre 1 e 12.');
  }
}
