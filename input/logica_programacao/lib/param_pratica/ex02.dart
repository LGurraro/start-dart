// TODO: Crie um programa para simular a gratificação de um vendedor de uma loja de carros usados.
// O sistema deve solicitar o salário básico do funcionário e o mês que deseja simular o salário com a gratificação.
// A gratificação corresponde a 30% do salário básico do funcionário nos meses de janeiro até maio.
// De junho até novembro a gratificação corresponde a 40% do salário básico.
// Em dezembro, a gratificação equivale a 60% do salário.
// O sistema deve apresentar a gratificação dentro de uma função que receba o salário por parâmetro.

import 'dart:io';

void main() {
  print('Digite o salário básico do funcionário:');
  double? salarioBasico = double.tryParse(stdin.readLineSync() ?? '');

  print('Digite o mês para simular a gratificação (1-12):');
  int mes = int.parse(stdin.readLineSync() ?? '0');

  if (salarioBasico == null || mes < 1 || mes > 12) {
    print('Entrada inválida. Por favor, tente novamente.');
    return;
  }

  double gratificacao = calcularGratificacao(salarioBasico, mes);
  print('A gratificação para o mês $mes é: $gratificacao');
}

double calcularGratificacao(double salarioBasico, int mes) {
  double percentualGratificacao;

  if (mes >= 1 && mes <= 5) {
    percentualGratificacao = 0.30; // 30%
  } else if (mes >= 6 && mes <= 11) {
    percentualGratificacao = 0.40; // 40%
  } else {
    percentualGratificacao = 0.60; // 60% para dezembro
  }

  return salarioBasico * percentualGratificacao;
}
