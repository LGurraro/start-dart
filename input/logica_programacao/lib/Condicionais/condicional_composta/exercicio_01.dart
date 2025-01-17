// TODO: Criar um programa que solicite ao usuário um número entre 1 e 10.
//Se o número informado for 5, apresente a mensagem "Você acertou!".
//Caso contrário, o programa não apresenta nenhuma mensagem

import 'dart:io';

void main() {
  print('Bem-vindo, Por favor, digite um número entre 1 e 10:');
  String numeroLeitura = stdin.readLineSync() as String;
// Se o numeroLeitura for igual a 5, apresente a mensagem "Você acertou!"
  if (numeroLeitura == '5') {
    print('Você acertou!');
  } else {
    // Se não
    if (numeroLeitura == '7') {
      // Se o numeroLeitura for igual a 7, apresente a mensagem "Você Acertou o grande prêmio!"
      print('Você Acertou o grande prêmio!');
    } else if (numeroLeitura == '3') {
      // Se não, se o numeroLeitura for igual a 3, apresente a mensagem "Você errou feio!"
      print('Você errou feio!');
    } else {
      // Se não, apresente a mensagem "Você errou!"
      print('Você errou!');
    }
  }
}
