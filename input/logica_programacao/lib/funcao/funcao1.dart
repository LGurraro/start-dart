void main() {
  print('Inicio da funcao');
  calcularPorcentagem();
  print('Fim da funcao');
}

void calcularPorcentagem() {
  var numero = 30;
  var porcentagem = 20;

  var resultado = (numero * (porcentagem/100));
  print('O resultado da porcentagem é $resultado');
}