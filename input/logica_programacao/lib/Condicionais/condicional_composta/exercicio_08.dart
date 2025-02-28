//TODO: Crie um programa que solicite um número inteiro
//e apresente se ele é positivo ou negativo.

import 'dart:io';

void main() {
  print('Seja Bem-vindo(a)');
  print('Por favor, informe um número inteiro:');
  String numeroLeitaura = stdin.readLineSync() as String;
  int numero = int.parse(numeroLeitaura);

  double resto = numero % 2;

  if (resto == 0) {
    print('O número $numero é par');
  } else {
    print('O número $numero é impar');
  }

  if (numero.isNegative) {
    print('O número $numero é negativo');
  } else {
    print('O número $numero é positivo');
  }
}
