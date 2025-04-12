//TODO:Crie um programa que solicite ao usuário a estação do ano desejada
//e o sistema deve apresentar o dia que começa a estação,
//são elas: outono - 20 de março, inverno - 21 junho, primavera - 22 setembro e verão - 21 de dezembro.

import 'dart:io';

void main() {
  print('Por favor digite a estação do ano desejada:');
  print('1 - Outono');
  print('2 - Inverno');
  print('3 - Primavera');
  print('4 - Verão');

  var estacao = stdin.readLineSync() as String;
  var estacaoEscolhida = int.parse(estacao);

  switch (estacaoEscolhida) {
    case 1:
      print('A estação do ano escolhida é Outono, que começa no dia 20 de março.');
      break;
    case 2:
      print('A estação do ano escolhida é Inverno, que começa no dia 21 de junho.');
      break;
    case 3:
      print('A estação do ano escolhida é Primavera, que começa no dia 22 de setembro.');
      break;
    case 4:
      print('A estação do ano escolhida é Verão, que começa no dia 21 de dezembro.');
      break;
    default:
      print('Opção inválida. Por favor, escolha uma opção válida: 1, 2, 3 ou 4.');
  }
}
