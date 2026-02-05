// TODO: Altere o programa da calculadora para que ele realize as 4 operações sempre.
// No final do programa, o algoritmo deve apresentar a soma do valor de retorno das 4 operações.

import 'dart:io';

void main() {
  double numero1 = 0;
  double numero2 = 0;

  print('Calculadora');

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

  double resultadoSoma = somar(numero1, numero2);
  print('O resultado da soma é: $resultadoSoma');

  double resultadoSubtracao = subtrair(numero1, numero2);
  print('O resultado da subtração é: $resultadoSubtracao');

  double resultadoMultiplicacao = multiplicar(numero1, numero2);
  print('O resultado da multiplicação é: $resultadoMultiplicacao');

  double resultadoDivisao = dividir(numero1, numero2);
  print('O resultado da divisão é: $resultadoDivisao');

  double somaOperacoes = resultadoSoma +
      resultadoSubtracao +
      resultadoMultiplicacao +
      resultadoDivisao;
  print('A soma do valor de retorno das 4 operações é: $somaOperacoes');
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