import 'dart:io';

void main() {
  List<String> paisesComCPF = ["Brasil".toLowerCase()];

  print('Pais de nascimento:');
  var paisDeNascimento = stdin.readLineSync() as String;
  String documento;
  String tipoDocumento;

  if (paisesComCPF.contains(paisDeNascimento.toLowerCase())) {
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
