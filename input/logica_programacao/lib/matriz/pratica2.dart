// TODO: Continuando o exemplo da venda de ingresso, agora o seu sistema deve solicitar ao usuário qual poltrona ele deseja comprar. 
// O sistema então deve ocultar a poltrona comprada. 

import 'dart:io';
void main(){
var teatro = [];
var fileiras = 7;
var poltronasPorFileira = 6;

for (var fileira = 0; fileira < fileiras; fileira++) {
var fileiraTeatro = [];
for (var poltrona = 0; poltrona < poltronasPorFileira; poltrona++) {
fileiraTeatro.add(0);
}
teatro.add(fileiraTeatro);
}

print('Indique a fileira na qual deseja reservar sua poltrona');
var fileiraEscolhida = int.parse(stdin.readLineSync() as String);

print('Indique a poltrona que você deseja reservar');
var poltronaEscolhida = int.parse(stdin.readLineSync() as String);

print('Mapa do Teatro');
print('------------------------------------------');
print(' # PALCO # ');
for (var fileira = 0; fileira < fileiras; fileira++) {
var fileiraP = '';
for (var poltrona = 0; poltrona < poltronasPorFileira; poltrona++) {
if (fileira == fileiraEscolhida && poltrona == poltronaEscolhida) {
fileiraP += (' *** | ');
} else {
fileiraP += 'P($fileira$poltrona): ${teatro[fileira][poltrona]} | ';
}
}
print(fileiraP);
}
print('');
print(' # FINAL DO TEATRO # ');
}

