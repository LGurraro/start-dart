import 'dart:io';

void main() {
  print('Opçoẽs de menu:');
  print('1 - Contratar internet');
  print('2 - Cancelar a internet');
  print('3 - Problemas na Internet');
  print('4 - Financeiro');
  print('5 - Falar com os nossos atendentes');

  var Opcao = stdin.readLineSync() as String;

  var opcaoEscolhida = int.parse(Opcao);

  if (opcaoEscolhida == 1) {
    print('Você escolheu a opção 1 - Contratando internet');
  } else if (opcaoEscolhida == 2) {
    print('Você escolheu a opção 2 - Cancelando a internet');
  } else if (opcaoEscolhida == 3) {
    print('Você escolheu a opção 3 - Problemas na internet');
  } else if (opcaoEscolhida == 4) {
    print('Você escolheu a opção 4 - Financeiro');
  } else {
    print('Você escolheu a opção 5 - Falar com os nossos atendentes');
  }
}
