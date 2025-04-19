//TODO: Crie um programa que solicite o tamanho de uma blusa (P, M e G)
// E apresente o tamanho da blusa solicitada. (P: 0.46 X 0.55 - M: 0.51 X 0.56 - G: 0.52 X 0.58)

import 'dart:io';

void main() {
  print('Seja bem-vindo(a) ao sistema de tamanhos de blusas');
  print('Por favor, digite o tamanho da blusa desejada (P, M ou G):');

  String tamanhoDigitado = stdin.readLineSync()!.toUpperCase();

  switch (tamanhoDigitado) {
    case 'P':
      print('Tamanho P: 0.46 X 0.55');
      break;
    case 'M':
      print('Tamanho M: 0.51 X 0.56');
      break;
    case 'G':
      print('Tamanho G: 0.52 X 0.58');
      break;
    default:
      print('Tamanho inválido. Por favor, digite P, M ou G.');
      break;
  }
}
