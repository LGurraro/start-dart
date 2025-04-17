//TODO:Crie um programa para calcular o desconto de acordo com os itens comprados em uma padaria.
// Se o cliente comprar 10 pães e mais um queijo, ele ganha 10% de desconto.
// Se o cliente comprar uma bisnaga ou um pão de forma, ele tem um desconto de 15%.
// Agora se o cliente comprar leite e pão doce ou suspiro, ele ganha 5% de desconto.
// Os preços dos produtos devem ser definidos por você.
// O desconto não é acumulativo e será aplicado o maior percentual, de acordo com as regras, uma única vez no final da compra.

import 'dart:io';

void main() {
  double precoPao = 0.50;
  double precoQueijo = 2.00;
  double precoBisnaga = 3.00;
  double precoPaoForma = 10.00;
  double precoLeite = 6.90;
  double precoPaoDoce = 7.99;
  double precoSuspiro = 2.50;

  print('Bem-vindo(a) a PadoKaria do Padoka!');
  print('Por favor, digite a quantidade de pães que você deseja comprar:');
  int quantidadePao = int.tryParse(stdin.readLineSync()!) ?? 0;

  print('Por favor, digite a quantidade de queijos que você deseja comprar:');
  int quantidadeQueijo = int.tryParse(stdin.readLineSync()!) ?? 0;

  print('Por favor, digite a quantidade de bisnagas que você deseja comprar:');
  int quantidadeBisnaga = int.tryParse(stdin.readLineSync()!) ?? 0;

  print('Por favor, digite a quantidade de pães de forma que você deseja comprar:');
  int quantidadePaoForma = int.tryParse(stdin.readLineSync()!) ?? 0;

  print('Por favor, digite a quantidade de leite que você deseja comprar:');
  int quantidadeLeite = int.tryParse(stdin.readLineSync()!) ?? 0;

  print('Por favor, digite a quantidade de pães doces que você deseja comprar:');
  int quantidadePaoDoce = int.tryParse(stdin.readLineSync()!) ?? 0;

  print('Por favor, digite a quantidade de suspiros que você deseja comprar:');
  int quantidadeSuspiro = int.tryParse(stdin.readLineSync()!) ?? 0;

  double totalDoPao = quantidadePao * precoPao;
  double totalQueijo = quantidadeQueijo * precoQueijo;
  double totalBisnaga = quantidadeBisnaga * precoBisnaga;
  double totalPaoForma = quantidadePaoForma * precoPaoForma;
  double totalLeite = quantidadeLeite * precoLeite;
  double totalPaoDoce = quantidadePaoDoce * precoPaoDoce;
  double totalSuspiro = quantidadeSuspiro * precoSuspiro;

  double totalCompra = totalDoPao + totalQueijo + totalBisnaga + totalPaoForma + totalLeite + totalPaoDoce + totalSuspiro;
  double descontoAplicado = 0.0;

  double descontoPaoQueijo = 10;
  double descontoBisnagaPaoForma = 15;
  double descontoLeitePaoDoceSuspiro = 5;

  if (quantidadePao >= 10 && quantidadeQueijo > 0 && descontoPaoQueijo > descontoAplicado) {
    descontoAplicado = descontoPaoQueijo;
  }
  if ((quantidadeBisnaga >= 1 || quantidadePaoForma > 0) && descontoBisnagaPaoForma > descontoAplicado) {
    descontoAplicado = descontoBisnagaPaoForma;
  }
  if ((quantidadeLeite >= 1 && (quantidadePaoDoce > 0 || quantidadeSuspiro > 0)) && descontoLeitePaoDoceSuspiro > descontoAplicado) {
    descontoAplicado = descontoLeitePaoDoceSuspiro;
  }

  // (percent *total) / 100

  double valorDesconto = (descontoAplicado * totalCompra) / 100;
  double precoFinal = totalCompra - valorDesconto;

  print('-------------------------------------');
  print('Resumo da sua compra:');
  // (qtd)x (produto) (preco)

  print("${quantidadePao}x Pão - R\$ $precoPao");
  print("${quantidadeQueijo}x Queijo - R\$ $precoQueijo");
  print("${quantidadeBisnaga}x Bisnaga - R\$ $precoBisnaga");
  print("${quantidadePaoForma}x Pão de Forma - R\$ $precoPaoForma");
  print("${quantidadeLeite}x Leite - R\$ $precoLeite");
  print("${quantidadePaoDoce}x Pão Doce - R\$ $precoPaoDoce");
  print("${quantidadeSuspiro}x Suspiro - R\$ $precoSuspiro");
  print('-------------------------------------');

// Resumo do desconto da compra

  print('O subtotal da sua compra é: R\$: $totalCompra');
  print('O desconto aplicado foi de: $descontoAplicado%');
  print('O valor do desconto é: R\$: $valorDesconto');
  print('O total a pagar é: R\$: $precoFinal');
  print('Obrigado por comprar na PadoKaria do Padoka!');
  print('Volte sempre!');
  print('-------------------------------------');
}
