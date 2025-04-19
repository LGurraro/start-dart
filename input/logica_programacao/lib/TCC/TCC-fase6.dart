import 'dart:io';

void main() {
  print('Informe seu nome, por favor:');
  var nome = stdin.readLineSync();

  print("""

Prezado(a), $nome. Seja muito bem-vindo(a) à nossa loja.
Oferecemos em nossa loja produtos e serviços para seu PET.
Para venda de produtos, procure o colaborador Junior e, para serviços como banho ou tosa, procure o colaborador Neto.
Obrigado e esperamos que tenha uma ótima experiência em nossa loja.

  """);

  print("""
Selecione uma das opções abaixo:
1 - Ver ofertas de produtos 
2 - Ver ofertas de Serviços
3 - Ver ofertas de roupas para seu o seu pet
4 - Ver novos serviços
5 - Promoção I 10% de desconto
6 - Promoção II 20% de desconto

""");
  String itemDoMenuLeitura = stdin.readLineSync() as String;
  int itemDoMenu = int.parse(itemDoMenuLeitura);

  switch (itemDoMenu) {
    case 1:
      print('Ração Royal Canin Indor 7,5kg com o valor promocional de R\$ 280,00');
      break;
    case 2:
      print('Banho e tosa na promoção pelo preço do banho R\$ 54,00');
      break;
    case 3:
      print('Roupas em oferta - Capa de chuva R\$ 59,9');
      break;
    case 4:
      print('Novos serviços oferecidos: Hidratação de pelo R\$39,99  Tosa higienica por R\$ 10,99 | Tingimento dos pelo por R\$ 55,99');
      break;
    case 5:
      print('I: Compre um saco de 15kg de ração (R\$ 345,99) e ganhe 10% de desconto no banho.');
      break;
    case 6:
      print('II: Compre 1 banho com tosa higienica e hidratação e ganhe 20% de desconto no valor total.');
      break;
    default:
      print("Opção inválida");
      break;
  }
}
