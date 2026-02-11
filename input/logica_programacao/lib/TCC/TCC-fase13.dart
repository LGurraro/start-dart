// TODO: Transforme o cálculo do desconto em uma função. A função deve receber por parâmetro o valor total do carrinho e retornar o valor do desconto.

import 'dart:io';

void main() {
  List<Map<String, dynamic>> carrinho = [];
  double totalVendas = 0;
  int quantidadeVendas = 0;

  while (true) {
    print('\nBem-vindo ao autoatendimento do Cuidapet!');
    print('Digite seu nome:');
    String? nome = stdin.readLineSync();

    if (nome == 'cuidapetrestrito') {
      print('\n Acesso restrito para funcionários');

      print('Digite o nome do cliente:');
      String? nomeCliente = stdin.readLineSync();

      print('Digite o valor total gasto pelo cliente:');
      double? valorGasto = double.tryParse(stdin.readLineSync() ?? '');

      if (valorGasto == null) {
        print('Valor inválido.');
        continue;
      }

      print('Forma de pagamento (D – dinheiro / C – cartão):');
      String? formaPagamento = stdin.readLineSync()?.toUpperCase();

      if (formaPagamento == 'D') {
        valorGasto *= 0.9;
      }

      print('Valor final a ser pago: R\$${valorGasto.toStringAsFixed(2)}');

      totalVendas += valorGasto;
      quantidadeVendas++;
      continue;
    }

    int opcaoMenu = -1;

    while (opcaoMenu != 0) {
      print('\n$nome, escolha uma opção do menu abaixo:');
      exibirMenu();

      opcaoMenu = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

      switch (opcaoMenu) {
        case 1:
          print('\nPromoções:');
          print('101 - Ração Royal Canin Indoor (7,5kg) - R\$ 290,00');
          print('102 - Ração Royal Canin Sterilised - R\$ 492,00');
          print('103 - Bifinho Keldog - R\$ 23,92');
          print('104 - Fraldas Super Secão (12 un.) - R\$ 38,61');
          print('8 – Adicionar ao carrinho');
          print('0 – Voltar');

          int opcaoPromo = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

          if (opcaoPromo == 8) {
            if (carrinho.length >= 3) {
              print('Seu carrinho já está cheio (máx. 3 itens).');
            } else {
              print('Digite o código do produto:');
              int? codigoProduto = int.tryParse(stdin.readLineSync() ?? '');

              if (codigoProduto == 101) {
                carrinho.add({
                  'nome': 'Ração Royal Canin Indoor',
                  'preco': 290.00,
                });
                print(
                  'Produto adicionado: Ração Royal Canin Indoor - R\$290,00',
                );
              } else if (codigoProduto == 102) {
                carrinho.add({
                  'nome': 'Ração Royal Canin Sterilised',
                  'preco': 492.00,
                });
                print(
                  'Produto adicionado: Ração Royal Canin Sterilised - R\$492,00',
                );
              } else if (codigoProduto == 103) {
                carrinho.add({'nome': 'Bifinho Keldog', 'preco': 23.92});
                print('Produto adicionado: Bifinho Keldog - R\$23,92');
              } else if (codigoProduto == 104) {
                carrinho.add({'nome': 'Fraldas Super Secão', 'preco': 38.61});
                print('Produto adicionado: Fraldas Super Secão - R\$38,61');
              } else {
                print('Código inválido.');
              }
            }
          }
          break;

        case 2:
          print('\nServiços disponíveis:');
          print('201 - Banho e tosa - R\$ 55,99');
          print('202 - Tosa higiênica - R\$ 12,99');
          print('203 - Hidratação dos pelos - R\$ 20,99');
          print('8 – Adicionar ao carrinho');
          print('0 – Voltar');

          int opcaoServico = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

          if (opcaoServico == 8) {
            if (carrinho.length >= 3) {
              print('Seu carrinho já está cheio (máx. 3 itens).');
            } else {
              print('Digite o código do serviço:');
              int? codigoServico = int.tryParse(stdin.readLineSync() ?? '');

              if (codigoServico == 201) {
                carrinho.add({'nome': 'Banho e tosa', 'preco': 55.99});
                print('Serviço adicionado: Banho e tosa');
              } else if (codigoServico == 202) {
                carrinho.add({'nome': 'Tosa higiênica', 'preco': 12.99});
                print('Serviço adicionado: Tosa higiênica');
              } else if (codigoServico == 203) {
                carrinho.add({'nome': 'Hidratação dos pelos', 'preco': 20.99});
                print('Serviço adicionado: Hidratação dos pelos');
              } else {
                print('Código inválido.');
              }
            }
          }
          break;

        case 3:
          print('\nCarrinho de compras:');
          if (carrinho.isEmpty) {
            print('Seu carrinho está vazio.');
          } else {
            for (var item in carrinho) {
              print('${item['nome']} - R\$ ${item['preco']}');
            }
          }
          break;

        case 4:
          if (carrinho.isEmpty) {
            print('Seu carrinho está vazio.');
          } else {
            double total = carrinho.fold(0, (sum, item) => sum + item['preco']);

            print('\nForma de pagamento (dinheiro/cartão):');
            String? pagamento = stdin.readLineSync()?.toLowerCase();

            if (pagamento == 'dinheiro') {
              double desconto = calculaDesconto(total);
              total = total - desconto;
            }

            print('Total a pagar: R\$ ${total.toStringAsFixed(2)}');

            totalVendas += total;
            quantidadeVendas++;
            carrinho.clear();
          }
          break;

        case 0:
          print('Saindo do sistema...');
          print('Total de vendas: $quantidadeVendas');
          print(
            'Valor total das vendas: R\$ ${totalVendas.toStringAsFixed(2)}',
          );
          return;

        default:
          print('Opção inválida. Tente novamente.');
      }
    }
  }
}

void exibirMenu() {
  print('\nMENU');
  print('1 – Ver promoções');
  print('2 – Solicitar serviço');
  print('3 – Listar carrinho de compra');
  print('4 - Finalizar carrinho de compra');
  print('0 - Sair');
  print('Digite sua opção desejada:');
}

double calculaDesconto(double total) {
  double desconto = total * 0.1;
  return desconto;
}
