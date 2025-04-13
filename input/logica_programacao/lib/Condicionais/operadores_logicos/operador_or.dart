import 'dart:io';

void main() {
  print('Qual a prevsão do tempo?');
  var previsaoLeitura = stdin.readLineSync() as String;

  print('Você tem prova?');
  var provaLeitura = stdin.readLineSync() as String;

  if (previsaoLeitura == 'Sol' || provaLeitura == ' Não') {
    // =>|| = ou
    print('Você pode ir para a praia.');
  } else {
    print('Você não pode ir para a praia.');
  }
}
