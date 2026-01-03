// TODO: Crie um programa para armazenar a velocidade de 6 voltas de um piloto em uma pista de kart.
// Depois de ter armazenado as velocidades
// seu programa deve apresentar as velocidades na ordem contrária da lida (a última velocidade lida será a primeira a ser exibida, e assim sucessivamente).

import 'dart:io';

void main() {
  List<double> velociades = [];

  for (var voltas = 1; voltas <= 6; voltas++) {
    print('Digite a velocidade da volta $voltas:');
    var velocidadeLeitura = stdin.readLineSync() as String;
    var velocidadeLida = double.parse(velocidadeLeitura);
    velociades.add(velocidadeLida);
  }

  print('As velocidades na ordem contrária são:');
  for (var voltas = 6; voltas >= 1; voltas--) {
    print('Volta $voltas: ${velociades[voltas - 1]}');
  }
}
