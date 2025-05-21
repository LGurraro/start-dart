//TODO:Crie um programa que solicite ao usuário o número de bolinhas de gude que estão em um pote de vidro.
// Se o número digitado for igual a 82, apresente a mensagem "Parabéns, você acertou".
// Se o número digitado for menor que 82, apresente a mensagem "Você errou! Existem mais bolinhas do que você digitou".
// Se o número digitado for maior que 82, apresente a mensagem "Você errou! Existem menos bolinhas do que você digitou".
// O programa deve dar 5 oportunidades para que o usuário tente acertar a quantidade correta de bolinhas de gude.

import 'dart:io';

void main() {
  int numeroCorreto = 82;
  int tentativas = 5;

  for (var contador = 1; contador <= tentativas; contador++) {
    // print('Por favor, digite o número de bolinhas de gude:');
    // var numeroDigitado = stdin.readLineSync() as String;
    // var numero = int.parse(numeroDigitado);

    int numero = lerNumero();

    if (numero == numeroCorreto) {
      print('Parabéns, você acertou!');
      break;
    } else if (numero < numeroCorreto) {
      print('Você errou! Existem mais bolinhas do que você digitou.');
    } else {
      print('Você errou! Existem menos bolinhas do que você digitou.');
    }
  }
}

int lerNumero() {
  print('Por favor, digite o número de bolinhas de gude:');
  var numeroDigitado = stdin.readLineSync() as String;

  if (numeroDigitado.isEmpty) {
    return 0;
  }

  var numero = int.parse(numeroDigitado);

  return numero;
}
