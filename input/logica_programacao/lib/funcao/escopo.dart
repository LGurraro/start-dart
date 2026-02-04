// TODO: Escopo de variáveis é a região do código onde a variável é  visivel e pode ser acessada.

// Váriavel local:
// É a variável que só existe dentro de um determinado bloco de código — por exemplo, dentro de uma função, método ou if.
// Só pode ser usada ali dentro.
// “Morre” quando o bloco termina

// Exemplo:
void calcular() {
  int resultado = 10; // variável local
  print(resultado);
}
// A variável 'resultado' só existe dentro da função 'calcular'.

// Váriavel global:
// É a variável que é declarada fora de funções ou métodos e pode ser acessada por várias partes do código.
// Pode ser usada em vários lugares
// “Vive” enquanto o programa estiver rodando

// Exemplo:
int contador = 0; // variável global

void incrementar() {
  contador++;
}

void mostrar() {
  print(contador);
}
// A variável 'contador' pode ser acessada por qualquer função no mesmo arquivo.