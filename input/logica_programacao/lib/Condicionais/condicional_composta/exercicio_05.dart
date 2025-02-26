// TODO: Crie um programa para uma loja de sucos.
//  O preço de cada suco é R$ 5.50,
// se o cliente comprar mais de 10 sucos, o preço individual passa para R$ 4.50.
// O programa deve solicitar a quantidade de sucos desejados pelo cliente
//e apresentar o preço final a ser pago.

import 'dart:io';

void main() {
  print('Seja Bem-vindo(a) a CoperSucos!');

  print('Por favor, informe a quantidade de sucos desejados:');
  String quantidadeLeitura = stdin.readLineSync() as String;
  double quantidade = double.parse(quantidadeLeitura);
  int quantidadeMinimaDesconto = 10;
  double precoUnitario = 5.50;
  double precoUnitarioDesconto = 4.50;
  double precoTotal = quantidade * precoUnitario;

  if (quantidade > quantidadeMinimaDesconto) {
    precoTotal = quantidade * precoUnitarioDesconto;
  }
  print('O preço total a ser pago é R\$ $precoTotal');
}
