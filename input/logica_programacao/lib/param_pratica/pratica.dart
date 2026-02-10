// Crie um que vai calcular o valor total de uma compra de um Biscoito.
// Caso o cliente comprar + que 10 biscoitos, aplique 10% de desconto no valor do biscoito.

void main(){
  var quantidade = 9;
  var ValorBiscoito = 1.0;

  var valorTotal = calcularPrecoBiscoito(quantidade, ValorBiscoito);
  print('O valor total da compra é: $valorTotal');
}

double calcularPrecoBiscoito(int quantidade, double valorBiscoito){
  if (quantidade > 10) {
    valorBiscoito *= 0.9; // Aplica desconto de 10%
    print('Aplicando desconto de 10% no valor do biscoito: $valorBiscoito');
  }
  return quantidade * valorBiscoito;
}