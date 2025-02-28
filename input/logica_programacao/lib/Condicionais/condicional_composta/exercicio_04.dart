//TODO: Crie um programa para calcular e informar se compensa mais abastecer um automóvel com gasolina ou com etanol.
//programa deve solicitar ao usuário o preço da gasolina e, em seguida, o preço do etanol.
//Depois efetuar a divisão do preço do etanol pelo preço da gasolina.
//Se o resultado for maior ou igual a 0.7, o programa deve apresentar a mensagem "Compensa abastecer com gasolina".
//Caso contrário, deve apresentar a mensagem "Compensa abastecer com etanol".

import 'dart:io';

void main() {
  print('Seja Bem-vindo ao AutoPosto AbasteceAqui!');
  print('Por favor, informe o preço da gasolina:');
  String precoGasolinaLeitura = stdin.readLineSync() as String;
  double precoGasolina = double.parse(precoGasolinaLeitura);

  print('Por favor, informe o preço do etanol:');
  String precoEtanolLeitura = stdin.readLineSync() as String;
  double precoEtanol = double.parse(precoEtanolLeitura);

  double precoEtanolGasolina = precoEtanol / precoGasolina;
  double precoBaseEtanolGasolina = 0.7;

  if (precoEtanolGasolina >= precoBaseEtanolGasolina) {
    print('Compensa abastecer com gasolina');
  } else {
    print('Compensa abastecer com etanol');
  }
}
