//TODO: O sistema deve solicitar ao funcionário as seguintes informações:
//O cliente comprou ração Ração Royal Canin Indor 7,5kg? Digite S ou N.
//O cliente solicitou banho e tosa? Digite S ou N.
//O cliente solicitou tosa higienica? Digite S ou N.
//O cliente solicitou hidratação? Digite S ou N.
//Ao final, o sistema deve apresentar o valor com os descontos, se for o caso, da ordem de serviço.

import 'dart:io';

void main() {
  double precoRacaoRoyalCanin = 345.99;
  double precoBanhoTosa = 54.00;
  double precoRoupaCapaChuva = 59.90;
  double precoHidratacao = 39.99;
  double precoTosaHigienica = 10.99;
  double precoTingimento = 55.99;

  // bool -> variável booleana, que pode ser true (verdadeira) ou false (falsa)
  bool comprouRacao = false;
  bool solicitouBanhoTosa = false;
  bool solicitouTosaHigienica = false;
  bool solicitouHidratacao = false;

  double totalCompra = 0;
  double descontoAplicado = 0.0;

  print('Informe seu nome, por favor:');
  var nome = stdin.readLineSync();
  if (nome == 'cuidapetrestrito') {
    print('Acesso liberado. Bem-vindo(a)');
    print('O cliente comprou ração Ração Royal Canin Indor 15kg? Digite S ou N.');
    var racao = stdin.readLineSync()!.toLowerCase();
    comprouRacao = racao == 's';

    print('O cliente solicitou banho e tosa? Digite S ou N.');
    var banhoTosa = stdin.readLineSync()!.toLowerCase();
    solicitouBanhoTosa = banhoTosa == 's';

    print('O cliente solicitou tosa higienica? Digite S ou N.');
    var tosaHigienica = stdin.readLineSync()!.toLowerCase();
    solicitouTosaHigienica = tosaHigienica == 's';

    print('O cliente solicitou hidratação? Digite S ou N.');
    var hidratacao = stdin.readLineSync()!.toLowerCase();
    solicitouHidratacao = hidratacao == 's';

    if (comprouRacao) {
      totalCompra += precoRacaoRoyalCanin;
    }
    if (solicitouBanhoTosa) {
      totalCompra += precoBanhoTosa;
    }
    if (solicitouTosaHigienica) {
      totalCompra += precoTosaHigienica;
    }
    if (solicitouHidratacao) {
      totalCompra += precoHidratacao;
    }

    if (comprouRacao && solicitouBanhoTosa) {
      descontoAplicado += precoBanhoTosa * 0.10;
    }

    if (solicitouBanhoTosa && solicitouTosaHigienica && solicitouHidratacao) {
      descontoAplicado += totalCompra * 0.20;
    }

    print('O valor total da compra é: R\$ ${totalCompra.toStringAsFixed(2)}');
    print('O valor do desconto aplicado é: R\$ ${descontoAplicado.toStringAsFixed(2)}');
    print('O valor total a ser pago é: R\$ ${(totalCompra - descontoAplicado).toStringAsFixed(2)}');
  } else {
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
        print('Ração Royal Canin Indor 15kg com o valor promocional de R\$ ${precoRacaoRoyalCanin.toStringAsFixed(2)}');
        break;
      case 2:
        print('Banho e tosa na promoção pelo preço do banho R\$ ${precoBanhoTosa.toStringAsFixed(2)}');
        break;
      case 3:
        print('Roupas em oferta - Capa de chuva R\$ ${precoRoupaCapaChuva.toStringAsFixed(2)}');
        break;
      case 4:
        print('Novos serviços oferecidos: Hidratação de pelo R\$ ${precoHidratacao.toStringAsFixed(2)} Tosa higienica por R\$ ${precoTosaHigienica.toStringAsFixed(2)} | Tingimento dos pelo por R\$ ${precoTingimento.toStringAsFixed(2)}');
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
}
