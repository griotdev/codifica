import 'package:dart_application_1/ex1_2.dart';

void main() {
  Produto p1 = Produto(codigo: '12345', nome: 'Smartphone X', preco: 1999.90);
  Produto p2 = Produto(codigo: '67890', nome: 'Fone Bluetooth', preco: 299.50);

  print('---Produto 1---\nCódigo: ${p1.codigo}\nNome: ${p1.nome}\nPreço: R\$${p1.preco}');
  print('---Produto 2---\nCódigo: ${p2.codigo}\nNome: ${p2.nome}\nPreço: R\$${p2.preco}');
}
