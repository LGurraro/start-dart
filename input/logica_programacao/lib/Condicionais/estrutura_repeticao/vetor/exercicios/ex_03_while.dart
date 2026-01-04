// TODO: Crie um programa para armazenar os 6 caracteres da senha do usuário.
// A senha só pode ter as vogais (a, e, i, o e u).
// Depois de armazenar cada vogal em uma posição, seu programa deve realizar a criptografia da senha.
// A lógica da criptografia é: cada letra 'a' deve ser substituída pelo caractere 'z', letra 'e' pelo caractere '3', letra 'i' pelo caractere 'l', letra 'o' pelo caractere '0' e letra 'u' pelo caractere $.
// Após criptografar a senha, o programa deve apresentar a senha digitada e a senha criptografada.

import 'dart:io';

void main() {
  List<String> senha = [];
  List<String> senhaCriptografada = [];

  final int tamanhoSenha = 6;
  final List<String> caracteresValidos = ['a', 'e', 'i', 'o', 'u'];

  print('Por favor, digite a sua senha de $tamanhoSenha caracteres contendo $caracteresValidos:');
  var senhaLida = stdin.readLineSync() as String;
  senha = senhaLida.split('');

  while (senha.length != tamanhoSenha || !senha.every((item) => caracteresValidos.contains(item.toLowerCase()))) {
    print('Senha inválida. A senha deve conter exatamente $tamanhoSenha caracteres e apenas $caracteresValidos. Tente novamente:');
    senhaLida = stdin.readLineSync() as String;
    senha = senhaLida.split('');
  }

  senhaCriptografada = senha
      .map((item) => switch (item.toLowerCase()) {
            'a' => 'z',
            'e' => '3',
            'i' => 'l',
            'o' => '0',
            'u' => '\$',
            _ => item,
          })
      .toList();

  print('Senha digitada: ${senha.join()}');
  print('Senha criptografada: ${senhaCriptografada.join()}');
}
