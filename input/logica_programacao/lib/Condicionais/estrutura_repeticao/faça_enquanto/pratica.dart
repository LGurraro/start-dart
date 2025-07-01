import 'dart:io';

void main() {
  print('Sistema de agendamento de prova de CNH');

  int idade;

  do {
    print('Atenção! Você precisa ter 18 anos ou mais para agendar a prova de CNH.');
    print('Digite sua idade:');
    var idadeLeitura = stdin.readLineSync() as String;
    idade = int.parse(idadeLeitura);
  } while (idade < 18);
}
