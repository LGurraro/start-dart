import 'dart:io';

void main() {
  print('Bem-vindo(a) a sorveteria Gellitos!');
  print('Sabores dos sorvetes de frutas:');
  print('Código 1 - Sabor Uva');
  print('Código 2 - Sabor Morango');
  print('Código 3 - Sabor Manga');
  print('Código 4 - Sabor Amora');

  print('Por favor, digite o código do sabor desejado:');

  var tipoSorveteLeitura = stdin.readLineSync() as String;
  var tipoSorvete = int.parse(tipoSorveteLeitura);

  switch (tipoSorvete) {
    case 1:
      print('Você escolheu o sabor Uva - 70 calorias');
      break;
    case 2:
      print('Você escolheu o sabor Morango - 70 calorias');
      break;
    case 3:
      print('Você escolheu o sabor Manga - 70 calorias');
      break;
    case 4:
      print('Você escolheu o sabor Amora - 54 calorias');
      break;
    default:
      print('Código inválido. Por favor, escolha um código de sabor válido.');
  }
}
