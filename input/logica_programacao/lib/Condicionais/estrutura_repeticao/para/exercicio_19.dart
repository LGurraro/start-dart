//TODO:Crie um programa que solicite 5 números e apresente na tela a soma de todos os números.

import 'dart:io';

void main() {
  double total = 0;

  for (var contador = 5; contador >= 1; contador--) {
    print('Por favor digite um número:');
    var numeroLeitura = stdin.readLineSync() as String;
    var numero = double.parse(numeroLeitura);
    total = total + numero;
  }
  print('A soma dos números informados é: $total');
}
