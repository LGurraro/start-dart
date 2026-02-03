void main() {
  print('Iniciando');
  fun1();
}
void fun1(){
  fun3();
}
void fun2(){
  fun4();
}
void fun3(){
  fun2();
}
void fun4() {
  print(StackTrace.current);
}