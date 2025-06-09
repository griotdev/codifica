import 'dart:io';

void salvarLista_txt(File file, String item) {
  if (item != 'fim') {
    file.writeAsStringSync('$item\n', mode: FileMode.append);
  }
}

void main() {
  final file = File('lista_de_compras.txt');
  do {
    print("Digite um item na lista de compras (digite 'fim' para sair): ");
    String item = stdin.readLineSync() ?? '0';
    salvarLista_txt(file, item);
    if (item == 'fim') break;
  } while (true);
}