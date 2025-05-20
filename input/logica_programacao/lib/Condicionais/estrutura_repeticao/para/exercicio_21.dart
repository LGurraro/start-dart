//TODO: Crie um programa para ler a altura de 12 atletas de basquete. Apresente no final quantos têm mais de 1.90.

import 'dart:io';

void main() {
  int maior190cm = 0;

  for (var contador = 12; contador >= 1; contador--) {
    print('Por favor digite a altura do atleta:');
    var alturaLeitura = stdin.readLineSync() as String;
    var altura = double.parse(alturaLeitura);
    if (altura > 1.90) {
      maior190cm = maior190cm + 1;
    }
  }
  print('O total de atletas com mais de 1.90 é: $maior190cm');
}
