import 'dart:io';

void lerConfiguracoes(String nomeArquivo)
{
  final arquivo = File(nomeArquivo);

  if (!arquivo.existsSync()){
    print("Erro: Arquivo '$nomeArquivo' não encontrado.");
    return;
  }

  List<String> linhas = arquivo.readAsLinesSync();

  print("Configurações encontradas: ");
  for (var linha in linhas){
    if (linha.trim().isEmpty || !linha.contains('=')){
      continue;   
    } 

    var partes = linha.split('=');
    if (partes.length == 2){
      var chave = partes[0].trim();
      var valor = partes[1].trim();
      print("$chave: $valor");
    }
  }
  print("Arquivo '$nomeArquivo' lido e fechado.");
}

void main()
{
  lerConfiguracoes('config.txt');
}
