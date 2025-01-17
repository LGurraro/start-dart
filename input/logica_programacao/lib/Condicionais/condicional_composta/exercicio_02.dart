// TODO:Crie um programa que solicite a velocidade de um carro
//apresente a mensagem "MULTADO", caso a velocidade seja maior que 80

import 'dart:io';

void main() {
  print('Por favor, digite a velocidade do carro:');
  String numeroLeitura = stdin.readLineSync() as String;
  int velocidade = int.parse(numeroLeitura);

  int limiteVelocidade = 80;

  if (velocidade > limiteVelocidade) {
    // Valor da multa! R$ 100 base mais R$ 2 por km acima de 80
    // EX: Velocidade de 100Km/h, R$100 + (20 * 2) = R$140
    int valorBase = 100;
    int valorPorKm = 2;

    int valorMulta = valorBase + ((velocidade - limiteVelocidade) * valorPorKm);
    print('MULTADO em R\$$valorMulta,00');
  } else {
    print('Você está dentro do limite de velocidade');
  }
}
