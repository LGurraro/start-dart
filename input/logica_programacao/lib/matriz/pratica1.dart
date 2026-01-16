// TODO:  Imagine que você foi contratado(a) para desenvolver um sistema para controlar a venda de ingressos de um pequeno teatro.
// O Teatro terá 5 fileiras e cada fileira terá 6 poltronas

void main(){
var teatro = [];
  var fileiras = 7;
  var poltronasPorFileira = 6;

  for(var fileira=0; fileira < fileiras; fileira++){
    var fileiraTeatro = [];
    for (var poltrona=0; poltrona < poltronasPorFileira; poltrona++) {
      fileiraTeatro.add(0);
    }
    teatro.add(fileiraTeatro);
  }

  print('Mapa do Teatro');
  print('--------------------------------------------------------');
  print('                # PALCO #             ');
  for(var fileira=0; fileira < fileiras; fileira++){
    var fileiraP = '';
    for(var poltrona=0; poltrona < poltronasPorFileira; poltrona++){
      fileiraP += 'P($fileira$poltrona): ${teatro[fileira][poltrona]} | ';
    }
    print(fileiraP);
  }
  print('');
  print('            # FINAL DO TEATRO #             ');

}








