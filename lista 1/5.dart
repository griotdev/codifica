void main() {
  String valorA = "30";
  String valorB = "15.75";
  
  int valorAint = int.parse(valorA);
  double valorBint = double.parse(valorB);

  var soma = valorAint + valorBint;
  
  print("A soma de $valorA e $valorB é: $soma");
}