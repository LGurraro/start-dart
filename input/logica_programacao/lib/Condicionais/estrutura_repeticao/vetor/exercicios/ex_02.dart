// TODO: Crie um programa para fidelização de clientes de um restaurante.
// A cada pagamento no restaurante, o valor é armazenado na cartela de fidelização.
// Assim que o cliente completar as 10 posições da cartela, o sistema deve apresentar a seguinte mensagem: "Hoje o seu almoço é uma cortesia da casa, Parabéns!".

import 'dart:io';

void main() {
  List<double> cartelaFidelizacao = [];

  for (var contador = 1; contador <= 10; contador++) {
    print('Por favor, digite o valor do pagamento $contador:');
    var valorLeitura = stdin.readLineSync() as String;
    var valorLido = double.parse(valorLeitura);
    cartelaFidelizacao.add(valorLido);
  }

  print('Hoje o seu almoço é uma cortesia da casa, Parabéns!');
}
