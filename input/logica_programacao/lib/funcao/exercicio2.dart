// TODO: Crie um programa para uma calculadora.
// Cada uma das operações deve ser uma função específica.
// O resultado da operação deve ser exibido dentro da função.

import 'dart:io';

void main() {
  int operacao;
  double numero1 = 0;
  double numero2 = 0;

  print('Calculadora');

  print('Escolha uma operação: ');
  print('Para soma digite 1');
  print('Para subtração digite 2');
  print('Para multiplicação digite 3');
  print('Para divisão digite 4');
  operacao = int.parse(stdin.readLineSync() ?? '0');

  do {
    print('Digite o primeiro número:');
    numero1 = double.parse(stdin.readLineSync() ?? '0');
    if (numero1 == 0) {
      print('Número deve ser diferente de zero');
    }
  } while (numero1 == 0);

  do {
    print('Digite o segundo número: ');
    numero2 = double.parse(stdin.readLineSync() ?? '0');
    if (numero2 == 0) {
      print('Número deve ser diferente de zero');
    }
  } while (numero2 == 0);

  switch (operacao) {
    case 1:
      double resultado = somar(numero1, numero2);
      print('O resultado da operação é: $resultado');

    case 2:
      double resultado = subtrair(numero1, numero2);
      print('O resultado da operação é: $resultado');

    case 3:
      double resultado = multiplicar(numero1, numero2);
      print('O resultado da operação é: $resultado');

    case 4:
      double resultado = dividir(numero1, numero2);
      print('O resultado da operação é: $resultado');
  }
}

double somar(double numero1, double numero2) {
  return numero1 + numero2;
}

double subtrair(double numero1, double numero2) {
  return numero1 - numero2;
}

double multiplicar(double numero1, double numero2) {
  return numero1 * numero2;
}

double dividir(double numero1, double numero2) {
  return numero1 / numero2;
}