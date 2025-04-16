//TODO: Crie um programa que solicite ao usuário um peso e uma altura
// apresente na saída o valor do IMC e um dos seguintes indicadores, são eles:
// IMC menor que 18.5 - magreza
//IMC entre 18.5 e 24.9 - normal
//IMC entre 24.9 e 30 - sobrepeso
//IMC maior que 30 - obesidade.
// A fórmula para o cálculo é IMC = peso / (altura * altura).

import 'dart:io';

void main() {
  print('Por favor, digite o seu peso:');
  var pesoDigitado = double.parse(stdin.readLineSync()!.replaceAll(',', '.'));

  print('Digite a sua altura:');
  var alturaDigitada = double.parse(stdin.readLineSync()!.replaceAll(',', '.'));

  double imc = pesoDigitado / (alturaDigitada * alturaDigitada);
  var imcFormatado = imc.toStringAsFixed(2);

  if (imc < 18.5) {
    print('Seu IMC é: $imcFormatado e você está com magreza.');
  } else if (imc >= 18.5 && imc < 24.9) {
    print('Seu IMC é: $imcFormatado e você está com peso normal.');
  } else if (imc >= 24.9 && imc < 30) {
    print('Seu IMC é: $imcFormatado e você está com sobrepeso.');
  } else {
    print('Seu IMC é: $imcFormatado e você está com obesidade.');
  }
}
