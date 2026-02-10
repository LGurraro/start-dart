// TODO:Você foi contratado por uma loja de venda de livros usados na internet e tem que realizar a simulação do valor de entrega dos pedidos.
// O seu programa deve solicitar ao vendedor o total a ser pago pelo cliente e qual o prazo de entrega desejado (3, 5, 7 ou 10 dias úteis).
// Para cada tipo de entrega, deve ser criada uma nova função que receba o valor total pago pelo cliente.
// As entregas disponíveis são as seguintes: 1 - Entrega em 3 dias úteis (adicionar R$ 25,00 reais ao valor pago pelo cliente),
// 2 - Entrega em 5 dias úteis (adicionar R$ 20,00 reais ao valor pago pelo cliente),
// 3 - Entrega em 7 dias úteis (adicionar R$ 15,00 reais ao valor pago pelo cliente)
// 4 - Entrega em 10 dias úteis (adicionar R$ 10,00 reais ao valor pago pelo cliente).
import 'dart:io';

void main() {
  print('Digite o valor total a ser pago pelo cliente:');

  double? valorTotal = double.tryParse(stdin.readLineSync() ?? '');

  print('Informe o prazo de entrega desejado:');
  print('Digite 1 para prazo de 3 dias úteis');
  print('Digite 2 para prazo de 5 dias úteis');
  print('Digite 3 para prazo de 7 dias úteis');
  print('Digite 4 para prazo de 10 dias úteis');

  int? prazoEntrega = int.tryParse(stdin.readLineSync() ?? '');

  switch (prazoEntrega) {
    case 1:
      {
        double valorComFrete = prazo1(valorTotal!);
        print('Valor total com frete: $valorComFrete');
      }

    case 2:
      {
        double valorComFrete = prazo2(valorTotal!);
        print('Valor total com frete: $valorComFrete');
      }

    case 3:
      {
        double valorComFrete = prazo3(valorTotal!);
        print('Valor total com frete: $valorComFrete');
      }

    case 4:
      {
        double valorComFrete = prazo4(valorTotal!);
        print('Valor total com frete: $valorComFrete');
      }
  }
}

double prazo1(double valorTotal) {
  double valorComFrete = valorTotal + 25.00;
  return valorComFrete;
}

double prazo2(double valorTotal) {
  double valorComFrete = valorTotal + 20.00;
  return valorComFrete;
}

double prazo3(double valorTotal) {
  double valorComFrete = valorTotal + 15.00;
  return valorComFrete;
}

double prazo4(double valorTotal) {
  double valorComFrete = valorTotal + 10.00;
  return valorComFrete;
}
