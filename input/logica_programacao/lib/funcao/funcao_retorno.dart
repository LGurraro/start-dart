void main() {
  print('Inicio da funçao');
  var resultadoCalculoDaPorcentagem = calcularPorcentagem();
  print('O resultado da porcentagem é $resultadoCalculoDaPorcentagem');
  print('Fim da funçao');
}

double calcularPorcentagem() {
  var numero = 30;
  var porcentagem = 20;

  var resultado = (numero * (porcentagem/100));

  return resultado;
}