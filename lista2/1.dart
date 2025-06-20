import 'dart:io';

bool verificar(double nota) {
  if(nota < 0 || nota > 10){
    return false;
  }
  return true;
}

void main() {
  print("Digite a primeira nota: ");
  double nota1 = double.parse(stdin.readLineSync()!);
  if (!verificar(nota1)) {
    print("Nota inválida, insira somente notas entre 0 e 10");
    return;
  }

  print("Digite a segunda nota: ");
  double nota2 = double.parse(stdin.readLineSync()!);
  
  if (!verificar(nota2)) {
    print("Nota inválida, insira somente notas entre 0 e 10");
    return;
  }

  print("Digite a terceira nota: ");
  double nota3 = double.parse(stdin.readLineSync()!);
  if (!verificar(nota3)) {
    print("Nota inválida, insira somente notas entre 0 e 10");
    return;
  }

  double media = (nota1 + nota2 + nota3) / 3;
  print("A media da nota eh: $media");
}
import 'dart:io';

bool verificar(double nota) {
  if(nota < 0 || nota > 10){
    return false;
  }
  return true;
}

void main() {
  print("Digite a primeira nota: ");
  double nota1 = double.parse(stdin.readLineSync()!);
  if (!verificar(nota1)) {
    print("Nota inválida, insira somente notas entre 0 e 10");
    return;
  }

  print("Digite a segunda nota: ");
  double nota2 = double.parse(stdin.readLineSync()!);
  if (!verificar(nota2)) {
    print("Nota inválida, insira somente notas entre 0 e 10");
    return;
  }

  print("Digite a terceira nota: ");
  double nota3 = double.parse(stdin.readLineSync()!);
  if (!verificar(nota3)) {
    print("Nota inválida, insira somente notas entre 0 e 10");
    return;
  }

  double media = (nota1 + nota2 + nota3) / 3;
  print("A media da nota eh: $media");
}