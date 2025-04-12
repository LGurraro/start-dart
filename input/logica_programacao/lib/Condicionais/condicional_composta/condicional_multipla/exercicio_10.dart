//TODO: Crie um programa para uma loja de sucos no qual são oferecidos os seguintes sucos:
// L - Laranja, M - Morango, A - Acerola e U - Uva.
// O usuário deve informar uma letra e o sistema apresentará o nome do suco
//e qual a principal vitamina que o suco fornece, são elas: laranja vitamina C, morango vitamina A, acerola vitamina C e uva vitamina E.

import 'dart:io';

void main() {
  print('Seja bem-vindo(a) a nossa loja de sucos!');
  print('Menu de sabores:L - Laranja, M - Morango, A - Acerola e U - Uva.');
  print('Por favor, digite a letra correspondente ao sabor desejado para descobrir a vitamina predominante:');
  var letra = stdin.readLineSync() as String;
  switch (letra.toUpperCase()) {
    case 'L':
      print('Você escolheu Laranja, que é rica em vitamina C.');
      break;
    case 'M':
      print('Você escolheu Morango, que é rico em vitamina A.');
      break;
    case 'A':
      print('Você escolheu Acerola, que é rica em vitamina C.');
      break;
    case 'U':
      print('Você escolheu Uva, que é rica em vitamina E.');
      break;
    default:
      print('Opção inválida. Por favor, escolha uma letra válida: L, M, A ou U.');
  }
}
