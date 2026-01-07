import 'dart:io';

void main() {
  // List<String> registro = ["nome completo;ganhadas;perdidas;totais"];
  // var [nome, ganhadas, perdidas, totais] = registro[0].split(";");

  // List<String> registro = [];

  List<String> nomes = [];
  List<int> pontos = [];

  // nome.trim().contains(" "); -> verifica se o nome tem mais de uma palavra

  for (var contador = 1; contador <= 5; contador++) {
    print('Digite o nome do jagador $contador:');
    String nomeLido = stdin.readLineSync() as String;

    while (nomeLido.trim().isEmpty || nomeLido.trim().contains(' ') == false) {
      print('Nome inválido. Por favor, digite o nome completo (com pelo menos um espaço).');
      nomeLido = stdin.readLineSync() as String;
    }

    nomes.add(nomeLido);

    // var novoRegistro = '$nomeLido;';

    print('Digite o número de partidas ganhas por $nomeLido:');
    var partidasGanhasLido = int.parse(stdin.readLineSync() as String);
    // novoRegistro += '$partidasGanhasLido;';

    print('Digite o número de partidas perdidas por $nomeLido:');
    var partidasPerdidasLido = int.parse(stdin.readLineSync() as String);
    // novoRegistro += '$partidasPerdidasLido;';

    var pontosCalculados = (partidasGanhasLido * 2) - (partidasPerdidasLido * 1);
    pontos.add(pontosCalculados);
    // novoRegistro += '$pontosCalculados';

    // registro.add(novoRegistro);
  }

  for (var i = 0; i < 5; i++) {
    print('O jogador ${nomes[i]} tem ${pontos[i]} pontos.');
  }
}
