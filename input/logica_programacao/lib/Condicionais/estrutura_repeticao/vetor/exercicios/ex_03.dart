// TODO: Crie um programa para armazenar os 6 caracteres da senha do usuário.
// A senha só pode ter as vogais (a, e, i, o e u).
// Depois de armazenar cada vogal em uma posição, seu programa deve realizar a criptografia da senha.
// A lógica da criptografia é: cada letra 'a' deve ser substituída pelo caractere 'z', letra 'e' pelo caractere '3', letra 'i' pelo caractere 'l', letra 'o' pelo caractere '0' e letra 'u' pelo caractere $.
// Após criptografar a senha, o programa deve apresentar a senha digitada e a senha criptografada.

import 'dart:io';

void main() {
  List<String> senha = [];
  List<String> senhaCriptografada = [];

  for (var contador = 1; contador <= 6; contador++) {
    print('Por favor, digite a vogal $contador da sua senha:');
    var letraLida = stdin.readLineSync() as String;

    // Verificar se a letra é uma vogal válida
    if (['a', 'e', 'i', 'o', 'u'].contains(letraLida.toLowerCase())) {
      senha.add(letraLida);

      // Realizar a criptografia da letra
      switch (letraLida.toLowerCase()) {
        case 'a':
          senhaCriptografada.add('z');
          break;
        case 'e':
          senhaCriptografada.add('3');
          break;
        case 'i':
          senhaCriptografada.add('l');
          break;
        case 'o':
          senhaCriptografada.add('0');
          break;
        case 'u':
          senhaCriptografada.add('\$');
          break;
      }
    } else {
      print('Entrada inválida. Por favor, digite apenas vogais (a, e, i, o, u).');
    }
  }

  print('Senha digitada: ${senha.join()}');
  print('Senha criptografada: ${senhaCriptografada.join()}');
}
