import 'dart:io';

void tabuada(int numero)
{
  print("Tabuada do $numero:");
  for(int i = 1; i <= 10; i++)
  {
    print("$numero x $i = ${numero * i}");
  }
}
void main()
{
  print("Deseja imprimir a tabuada de qual número?: ");
  int numero = int.parse(stdin.readLineSync()!);
  tabuada(numero);
}