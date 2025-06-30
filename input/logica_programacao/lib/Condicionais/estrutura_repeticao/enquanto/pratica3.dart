// Escreva um algoritmo que simule um radar em uma rodovia.
//
// A entrada das velocidades deve ser informada via teclado.
//
// Os veículos que passarem com a velocidade acima de 120 km/h devem ser multados.
//
// No final do algoritmo, deve-se apresentar a quantidade de veículos com a velocidade medida e a quantidade
// de veículos multados.

import 'dart:io';

void main() {
  var continuarMedindoVelocidade = 'sim';
  var qdtCarrosMedidos = 0;
  var qdtCarrosMultados = 0;
  var velocidadeMaxima = 120;

  while (continuarMedindoVelocidade == 'sim') {
    print('Digite a velocidade do veículo:');
    var velocidadeVeiculoLeitura = stdin.readLineSync() as String;
    var velocidade = int.parse(velocidadeVeiculoLeitura);

    if (velocidade > velocidadeMaxima) {
      qdtCarrosMultados++;
    }
    qdtCarrosMedidos++;

    print('Deseja continuar medindo a velocidade? (sim/não)');
    continuarMedindoVelocidade = stdin.readLineSync() as String;
  }

  print('Quantidade de veículos medidos: $qdtCarrosMedidos');
  print('Quantidade de veículos multados: $qdtCarrosMultados');
}
