void main() {
  
  double Celsius = 25.0;

  const double fator1 = 9 / 5;
  const double fator2 = 5 / 9;
  const double diferenca = 32;

  final double Fahrenheit = (Celsius * fator1) + diferenca;

  final double Celsius2 = (Fahrenheit - diferenca) * fator2;
 
  print("Temperatura em Celsius original: $Celsius°C");
  print("Convertido para Fahrenheit: $Fahrenheit°F");
  print("Reconvertido para Celsius: $Celsius2°C");
}