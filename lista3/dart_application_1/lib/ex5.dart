class Produto {
  String codigo;
  String nome;
  double preco;
  double precoOriginal;

  Produto({required this.codigo, required this.nome, required this.preco})
    : precoOriginal = preco;
}

class ProdutoEletronico extends Produto{
  int garantiaMeses;
  ProdutoEletronico({required super.codigo, required super.nome, required super.preco, required this.garantiaMeses});
  
  void exibirDetalhes({double? percentual}) {
    print('---Detalhes Originais---\nCódigo: $codigo\nNome: $nome\nPreço: R\$$preco\nGarantia (em meses): $garantiaMeses');
    if (percentual != null && percentual > 0) {
      double precoComDesconto = precoOriginal * (1 - percentual / 100);
      print('---Detalhes com Desconto---\nPreço com $percentual% de desconto.\nCódigo: $codigo\nNome: $nome\nPreço: R\$$precoComDesconto');
    }
  }
}

class ProdutoAlimenticio extends Produto{
  String dataValidade;
  ProdutoAlimenticio({required super.codigo, required super.nome, required super.preco, required this.dataValidade});
    void exibirDetalhes({double? percentual}) {
    print('---Detalhes Originais---\nCódigo: $codigo\nNome: $nome\nPreço: R\$$preco\nValidade: $dataValidade');
    if (percentual != null && percentual > 0) {
      double precoComDesconto = precoOriginal * (1 - percentual / 100);
      print('---Detalhes com Desconto---\nPreço com $percentual% de desconto.\nCódigo: $codigo\nNome: $nome\nPreço: R\$$precoComDesconto');
    }
  }
}

