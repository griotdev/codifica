class Produto {
  String codigo;
  String nome;
  double preco;
  double precoOriginal;
  
  static int totalDeProdutos = 0;

  Produto({required this.codigo, required this.nome, required double preco})
      : preco = preco,
        precoOriginal = preco {
    totalDeProdutos++;
  }
  
  void aplicarDesconto({required double percentual}) {
    if (percentual <= 0) {
      print("Desconto inválido.");
      return;
    }
    preco = preco * (1 - percentual / 100);
  }

  void exibirDetalhes({double? percentual}) {
    print('---Detalhes Originais---\nCódigo: $codigo\nNome: $nome\nPreço: R\$$precoOriginal');
    if (percentual != null && percentual > 0) {
      double precoComDesconto = precoOriginal * (1 - percentual / 100);
      print('---Detalhes com Desconto---\nPreço com $percentual% de desconto.\nCódigo: $codigo\nNome: $nome\nPreço: R\$$precoComDesconto');
    }
  }
  
  void imprimirTotal() {
    print('Total de produtos: $totalDeProdutos');
  }
}