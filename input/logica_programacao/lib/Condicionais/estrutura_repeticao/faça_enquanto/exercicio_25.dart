//TODO:Você foi contratado para desenvolver um sistema de emissão de boletos.
//O cliente deve informar qual o melhor dia para pagamento do boleto.
//Os dias disponíveis são 2, 5 ou 10.
//O sistema deve validar o dia informado pelo cliente e apresentar a mensagem boleto registrado caso o dia seja válido.
//Se o dia for inválido, o sistema deve solicitar um novo dia até que ele seja digitado corretamente.

import 'dart:io';

void main() {
  var diaLido = 0;

  do {
    print('Por favor, informe o dia para pagamento do boleto (2, 5 ou 10):');

    var diaLeitura = stdin.readLineSync() as String;
    diaLido = int.parse(diaLeitura);
    if (diaLido == 2 || diaLido == 5 || diaLido == 10) {
      print('Boleto registrado com sucesso para o dia $diaLido.');
    } else {
      print('Dia inválido. Por favor digite 2, 5 ou 10');
    }
  } while (diaLido != 2 && diaLido != 5 && diaLido != 10);
}
