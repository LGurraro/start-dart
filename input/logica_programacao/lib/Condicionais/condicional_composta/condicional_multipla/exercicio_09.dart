//TODO: Crie um programa que solicite ao usuário um número e apresente na tela qual é o dia da semana do respectivo número.
// Considere que os números fornecidos devem estar no intervalo entre 1 e 7.
// Considere que 1 é domingo, 2 é segunda e assim por diante.

import 'dart:io';

void main() {
  print('Por favor digite um número entre 1 e 7:');
  var numeroLeitura = stdin.readLineSync() as String;
  var numero = int.parse(numeroLeitura);

  if (numero == 1) {
    print('O número informado corresponde ao dia domingo');
  } else if (numero == 2) {
    print('O número informado corresponde ao dia segunda-feira');
  } else if (numero == 3) {
    print('O número informado corresponde ao dia terça-feira');
  } else if (numero == 4) {
    print('O número informado corresponde ao dia quarta-feira');
  } else if (numero == 5) {
    print('O número informado corresponde ao dia quinta-feira');
  } else if (numero == 6) {
    print('O número informado corresponde ao dia sexta-feira');
  } else if (numero == 7) {
    print('O número informado corresponde ao dia sábado');
  } else {
    print('Número inválido. Por favor, digite um número entre 1 e 7.');
  }

// Exemplo avançado utilizando switch case:

  switch (numero) {
    case 1:
      print('O número informado corresponde ao dia domingo');
      break;
    case 2:
      print('O número informado corresponde ao dia segunda-feira');
      break;
    case 3:
      print('O número informado corresponde ao dia terça-feira');
      break;
    case 4:
      print('O número informado corresponde ao dia quarta-feira');
      break;
    case 5:
      print('O número informado corresponde ao dia quinta-feira');
      break;
    case 6:
      print('O número informado corresponde ao dia sexta-feira');
      break;
    case 7:
      print('O número informado corresponde ao dia sábado');
      break;
    default:
      print('Número inválido. Por favor, digite um número entre 1 e 7.');
  }
}
