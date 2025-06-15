class Produto {
  final String codigo;
  final String nome;
  final double preco;

  Produto({required this.codigo, required this.nome, required this.preco});
}

class CarrinhoDeCompras {
  final List<Produto> _carrinho = [];

  void adicionarProduto(Produto produto) {
    _carrinho.add(produto);
  }

  double calcularTotal() {
    return _carrinho.fold(0.0, (total, produto) => total + produto.preco);
  }

  void exibirCarrinho() {
    print('---Carrinho de Compras---');
    for (var produto in _carrinho) {
      print('- ${produto.nome}: R\$ ${produto.preco.toStringAsFixed(2)}');
    }
    print('-------------------------');
    print('Total do Carrinho: R\$ ${calcularTotal().toStringAsFixed(2)}');
  }
}