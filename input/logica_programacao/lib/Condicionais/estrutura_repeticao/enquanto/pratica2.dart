//TODO: Imagine que você foi contratado para desenvolver um sistema de uma clínica de vacina.
// Não existe limite de vacinas BCG.
// Monte um programa utilizando o comando enquanto que solicite quantos dias de nascimento tem o bebê que receberá
// a vacina BCG.
// Ao atingir o limite de 30 vacinas, o programa deve mostrar a média de dias dos bebês vacinados.

import 'dart:io';

void main() {
  var diasNascimentoTotal = 0;
  var totalVacinasRealizadas = 1;
  var aindaTemVacina = 'sim';

  while (aindaTemVacina == 'sim') {
    print('Digite a quantidade de dias do recém-nascido:');
    var diasNascimentoLeitura = stdin.readLineSync() as String;
    diasNascimentoTotal = diasNascimentoTotal + int.parse(diasNascimentoLeitura);
    totalVacinasRealizadas++;
    print('Ainda tem vacina? (sim/não)');
    aindaTemVacina = stdin.readLineSync() as String;
  }
  print('Média dos bebês vacinados no dia foi de: ${diasNascimentoTotal / 30}');
}
