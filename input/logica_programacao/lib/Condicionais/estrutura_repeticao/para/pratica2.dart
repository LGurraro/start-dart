//TODO: construir a tabuada de um número

import 'dart:io';

void main() {
  print('Digite o número que você deseja calcular a tabuada:');
  var numeroLeitura = stdin.readLineSync() as String;
  var numero = int.parse(numeroLeitura);

// (inicial;condição;incremento)
  for (var contador = 10; contador >= 1; contador--) {
    print('$numero x $contador = ${contador * numero}');
  }
}
