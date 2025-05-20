//TODO: Crie um programa para ler 10 números e no final da leitura de todos os números apresente quantos números lidos foram maiores que 50.

import 'dart:io';

void main() {
  double maior50 = 0;

  for (var contador = 10; contador >= 1; contador--) {
    print('Por favor digite um número:');
    var numeroLeitura = stdin.readLineSync() as String;
    var numero = double.parse(numeroLeitura);
    if (numero > 50) {
      maior50 = maior50 + 1;
    }
  }

  print('O total de números maiores que 50 é: $maior50');
}
