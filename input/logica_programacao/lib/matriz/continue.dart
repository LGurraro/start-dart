

void main() {
  print('inicio');
  for (var i = 0; i < 10; i++) {
    if (i == 5) {
      //continue;
      // Ao usar o continue, o laço pula a iteração quando i for igual a 5
      // Ao usar o break, o laço é interrompido quando i for igual a 5
      break;
    }
    print(i);
  }
  print('fim');
}