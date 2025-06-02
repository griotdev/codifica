import 'dart:io';
void main(){

String? number1;
String? number2;

print("Digite dois números\n");

  number1 = stdin.readLineSync() ?? "0";
  number2 = stdin.readLineSync() ?? "0";

  double num1 = double.tryParse(number1) ?? 0;
  double num2 = double.tryParse(number2) ?? 0;

 final double soma = num1 + num2;
 final double sub = num1-num2;
 final double vezes = num1*num2;
 final double div = num1/num2;
 final double resto = num1%num2;
 final double media = (num1+num2)/2;
  
  print("Número 1: $num1\n");
  print("Número 2: $num2\n");
  print("--- Resultados ---\n");
  print("\nSoma: $soma\n");
  print("Subtração: $sub\n");
  print("Multiplicação: $vezes\n");
  print("Divisão: $div\n");
  print("Média Aritmética: $media\n");
  print("Resto da divisão: $resto\n");
}