class Produto {
  final String _codigo;
  final String _nome;
  double _preco;
  final double _precoOriginal;

  static int totalDeProdutos = 0;

  Produto({required String codigo, required String nome, required double preco})
      : _codigo = codigo,
        _nome = nome,
        _preco = preco,
        _precoOriginal = preco {
    totalDeProdutos++;
  }

  String get codigo => _codigo;
  String get nome => _nome;
  double get preco => _preco;
  double get precoOriginal => _precoOriginal;

  set novoPreco(double valor) {
    if (valor > 0) {
      _preco = valor;
    } else {
      print('O preço não pode ser negativo. O valor R\$ ${_preco.toStringAsFixed(2)} foi mantido.');
    }
  }

  void aplicarDesconto({required double percentual}) {
    if (percentual <= 0) {
      print("Desconto inválido.");
      return;
    }
    _preco = _preco * (1 - percentual / 100);
  }

  void exibirDetalhes({double? percentual}) {
    print('---Detalhes Originais---\nCódigo: $_codigo\nNome: $_nome\nPreço: R\$$_precoOriginal');
    if (percentual != null && percentual > 0) {
      double precoComDesconto = _precoOriginal * (1 - percentual / 100);
      print('---Detalhes com Desconto---\nPreço com $percentual% de desconto.\nCódigo: $_codigo\nNome: $_nome\nPreço: R\$$precoComDesconto');
    }
  }

  void imprimirTotal() {
    print('Total de produtos: $totalDeProdutos');
  }
}