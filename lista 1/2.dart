import 'dart:io';

void main() {
  
  print('Digite seu nome:');
  String? nome = stdin.readLineSync();

  print('Digite sua idade:');
  String? idadeInput = stdin.readLineSync();
  int idade = int.parse(idadeInput!);

  print('Digite sua cidade:');
  String? cidade = stdin.readLineSync();

  String idadeStr = idade.toString();


  final String frase = '$nome tem $idadeStr anos e mora em $cidade.';

  print(frase);
}