// TODO: Crie um programa que solicite uma letra e no final diga se ela é vogal ou não.
// Esse programa deve utilizar uma função que retorne o resultado para o programa principal.
// Esse programa deve utilizar uma função que retorne o resultado para o programa principal.

import 'dart:io';
bool verificarVogal(String letra) {
  String letraMinuscula = letra.toLowerCase();
  return 'aeiou'.contains(letraMinuscula);
}
void main() {
  print('Digite uma letra:');
  String letra = stdin.readLineSync() ?? '';

  if (letra.length != 1 || !RegExp(r'^[a-zA-Z]$').hasMatch(letra)) {
    print('Por favor, digite apenas uma letra válida.');
    return;
  }

  bool ehVogal = verificarVogal(letra);

  if (ehVogal) {
    print('A letra "$letra" é uma vogal.');
  } else {
    print('A letra "$letra" não é uma vogal.');
  }
}
