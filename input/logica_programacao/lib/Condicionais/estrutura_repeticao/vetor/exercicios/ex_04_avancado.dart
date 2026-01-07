import 'dart:io';

void main() {
  var qtdJogadores = 5;
  List<Jogador> jogadores = [];

  while (jogadores.length < qtdJogadores) {
    var nome = '';

    while (nome.trim().isEmpty || !nome.trim().contains(' ')) {
      print('Digite o nome do jogador ${jogadores.length + 1}:');
      nome = stdin.readLineSync() as String;

      if (!nome.trim().contains(' ')) {
        print('Nome inválido. Por favor, digite o nome completo (com pelo menos um espaço).');
      }
    }

    var partidasGanhas = 0;
    var partidasPerdidas = 0;

    do {
      print('Digite o número de partidas ganhas pelo jogador ${jogadores.length + 1}:');
      partidasGanhas = int.parse(stdin.readLineSync() as String);
    } while (partidasGanhas < 0);

    do {
      print('Digite o número de partidas perdidas pelo jogador ${jogadores.length + 1}:');
      partidasPerdidas = int.parse(stdin.readLineSync() as String);
    } while (partidasPerdidas < 0);

    jogadores.add(Jogador(nome, partidasGanhas, partidasPerdidas));
  }

  jogadores.sort((a, b) => b.pontosTotais.compareTo(a.pontosTotais));

  for (var jogador in jogadores) {
    print('O jogador ${jogador.nome} tem ${jogador.pontosTotais} pontos.');
  }
}

class Jogador {
  String nome;
  int partidasGanhadas;
  int partidasPerdidas;

  Jogador(this.nome, this.partidasGanhadas, this.partidasPerdidas);

  int get pontosTotais => (partidasGanhadas * 2) - (partidasPerdidas * 1);
}
