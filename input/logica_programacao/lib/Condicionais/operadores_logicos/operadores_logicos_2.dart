import 'dart:io';

void main() {
  print('Digite a sua idade:');
  var idadeLeitura = stdin.readLineSync() as String;

  print('Digite a quantidade de horas teóricas assistidas:');
  var horasTeoricasLeitura = stdin.readLineSync() as String;

  print('Digite a quantidade de horas práticas assistidas:');
  var horasPraticasLeitura = stdin.readLineSync() as String;

// E (And) (&&)

  var idade = int.parse(idadeLeitura);
  var horasTeoricas = int.parse(horasTeoricasLeitura);
  var horasPraticas = int.parse(horasPraticasLeitura);

  if (idade >= 18 && horasTeoricas >= 45 && horasPraticas >= 20) {
    print('Você está apto a realizar a prova prática.');
  } else {
    print('Você não está apto.');
  }
}
