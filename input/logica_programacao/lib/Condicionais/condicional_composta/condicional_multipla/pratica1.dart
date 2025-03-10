import 'dart:io';

void main() {
  print('Por favor, difite a sua idade:');
  var idadeLeitura = stdin.readLineSync() as String;
  var idade = int.parse(idadeLeitura);

  if (idade >= 16) {
    if (idade <= 17) {
      print('Seu voto é facultativo');
    } else {
      if (idade > 70) {
        print('Seu voto é facultativo');
      } else {
        print('Seu voto é obrigatório');
      }
    }
  } else {
    print('Você não pode votar');
  }
}
