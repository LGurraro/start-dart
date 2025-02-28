import 'dart:io';

void main() {
  print('Informe seu nome, por favor:');
  var nome = stdin.readLineSync();
  print('Prezado(a), $nome. Seja muito bem-vindo(a) à nossa loja');
  print('');
  print('Oferecemos em nossa loja produtos e serviços para seu PET. Para venda de produtos, procure o colaborador Junior e, para serviços como banho ou tosa, procure o colaborador Neto. Obrigado e esperamos que tenha uma ótima experiência em nossa loja.');
}
