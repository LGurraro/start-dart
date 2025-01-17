import 'dart:io';

void main() {
  print('Pais de nascimento:');
  var paisDeNascimento = stdin.readLineSync() as String;
  String documento;
  String tipoDocumento;

  if (paisDeNascimento.toLowerCase() == 'Brasil'.toLowerCase()) {
    print('Você é brasileiro');
    print('O numero do CPF');
    tipoDocumento = 'CPF';
  } else {
    print('O numero do passaporte');
    tipoDocumento = 'Passaporte';
  }

  documento = stdin.readLineSync() as String;

  print('Seu $tipoDocumento é $documento');
}
