import 'package:dart_application_1/ex1_2.dart';

void main() {
  Produto p1 = Produto(codigo: '12345', nome: 'Smartphone X', preco: 1999.90);
  Produto p2 = Produto(codigo: '67890', nome: 'Fone Bluetooth', preco: 299.50);
  
  p1.aplicarDesconto(percentual: 25);
  p1.exibirDetalhes(percentual: 25);

  p2.aplicarDesconto(percentual: 50);
  p2.exibirDetalhes(percentual: 50);
}
