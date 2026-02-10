// TODO: Você foi contratado para desenvolver um sistema que atualiza o valor do preço dos combustíveis de um posto de gasolina.
// Seu sistema deve reajustar o valor da gasolina em uma função e do etanol em outra função.
// O reajuste da gasolina é somado ao valor atual da gasolina.
// O reajuste do etanol também deve ser adicionado ao valor atual do etanol, porém ao reajustar o etanol também deve-se atualizar a gasolina somando 27% do valor do reajuste do etanol no valor atual da gasolina.
// Seu programa deve solicitar o valor atual da gasolina, do etanol, valor do reajuste e qual o combustível do reajuste (G-gasolina E-etanol).
// Ao final, o seu programa deve mostrar o valor final da gasolina e do etanol.

import 'dart:io';

void main() {
  print('Digite o valor atual da gasolina:');
  double? valorGasolina = double.tryParse(stdin.readLineSync() ?? '');
  print('Digite o valor atual do etanol:');
  double? valorEtanol = double.tryParse(stdin.readLineSync() ?? '');
  print('Digite o valor do reajuste:');
  double? valorReajuste = double.tryParse(stdin.readLineSync() ?? '');
  print('Digite o combustível do reajuste (G-gasolina E-etanol):');
  String? combustivelReajuste = stdin.readLineSync()?.toUpperCase();

  if (combustivelReajuste == 'G') {
    double valorGasolinaAtualizado = calcularValorCombustivelAtualizado(
      valorGasolina!,
      valorReajuste!,
    );

    print('Valor atualizado da gasolina: $valorGasolinaAtualizado');
  } else if (combustivelReajuste == 'E') {
    double valorEtanolAtualizado = calcularValorCombustivelAtualizado(
      valorEtanol!,
      valorReajuste!,
    );
    double valorGasolinaAtualizado = valorGasolina! + (0.27 * valorReajuste);
    print(
      'Valor atualizado do etanol: ${valorEtanolAtualizado.toStringAsFixed(2)}',
    );
    print(
      'Valor atualizado da gasolina: ${valorGasolinaAtualizado.toStringAsFixed(2)}',
    );
  } else {
    print('Combustível inválido. Por favor, tente novamente.');
  }
}

double calcularValorCombustivelAtualizado(
  double valorCombustivel,
  double valorReajuste,
) {
  return valorCombustivel + valorReajuste;
}
