//  TODO: crie um programa que vai calcular o valor total de uma compra de um Biscoito(bolacha)
// caso o cliente compre + que 10 Biscoito(bolacha) aplique 10% de desconto no valor do Biscoito(bolacha)
// ----------------------------------------

// Step 1
// Crie um menu para o usuário escolher 2 tipos de bolachas
// 1 - Sem Recheio
// 2 - Recheada

// Step 2
// Após isso solicite o usuário a quantidade de bolachas que ele gostaria

import 'dart:io';

void main() {
  double valorBiscoito = 0.0;

  print('Digite o código correspondente a opção de bolacha desejada:');
  print('1 - Sem Recheio');
  print('2 - Recheada');
  int? opcao = int.tryParse(stdin.readLineSync() ?? '');

  if (opcao == 1) {
    valorBiscoito = 1.0;
  } else if (opcao == 2) {
    valorBiscoito = 2.0;
  } else {
    print('Opção inexistente.');
    return;
  }

  int quantidade;
  do {
    print('Digite a quantidade de bolachas desejada:');
    quantidade = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

    if (quantidade == 0) {
      print('Quantidade inválida.');
    }
  } while (quantidade == 0);

  double valorTotal = calcularPrecoBiscoito(quantidade, valorBiscoito);
  // print("Valor total da Compra: $valorTotal");
  printTotal(valorTotal);
}

void printTotal(double valorTotal) {
  print("Valor total da Compra: $valorTotal");
}

double calcularPrecoBiscoito(int quantidade, double valorBiscoito) {
  double valorBiscoitoCalculado = valorBiscoito;

  if (quantidade > 10) {
    valorBiscoitoCalculado = valorBiscoito * 0.9;
    print(
      'Aplicado o desconto de 10% e o valor do biscoito ficou por $valorBiscoitoCalculado',
    );
  }
  return valorBiscoito * valorBiscoitoCalculado;
}
