//TODO: Crie um programa para ler N números até que a soma dos números seja maior ou igual a 100.
// Só permita que o usuário digite números maiores que 0 na entrada dos dados.
// Apresente a quantidade de números necessários para alcançar a soma maior ou igual a 100.

import 'dart:io';

void main() {
  int somaNumeros = 0;
  int quantidadeNumeros = 0;

  do {
    print('Por favor, digite um número maior que 0:');
    var numeroLeitura = stdin.readLineSync() as String;
    var numeroLido = int.parse(numeroLeitura);
    if (numeroLido > 0) {
      somaNumeros += numeroLido;
      quantidadeNumeros++;
    } else {
      print('Por favor, digite um número maior que 0.');
    }
  } while (somaNumeros < 100);
  print('A soma dos números é $somaNumeros, e foram necessários $quantidadeNumeros números para alcançá-la.');
}
