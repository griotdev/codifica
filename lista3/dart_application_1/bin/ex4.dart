import 'package:dart_application_1/ex4.dart';
void main() {
  var p1 = Produto(codigo: '111', nome: 'Mouse Gamer', preco: 150.0);
  var p2 = Produto(codigo: '222', nome: 'Monitor 24"', preco: 950.0);
  var p3 = Produto(codigo: '333', nome: 'Cadeira Gamer', preco: 1200.0);
  var carrinho = CarrinhoDeCompras();
  carrinho.adicionarProduto(p1);
  carrinho.adicionarProduto(p2);
  carrinho.adicionarProduto(p3);
  carrinho.exibirCarrinho();
}