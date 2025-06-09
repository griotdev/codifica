import 'dart:io';

void adicionar(List<String> tarefas, List<bool> concluidas)
{
  print('Digite a descrição da tarefa: ');
  String? desc = stdin.readLineSync();
  if (desc != null && desc.trim().isNotEmpty) {
    tarefas.add(desc.trim());
    concluidas.add(false);
    print('Tarefa adicionada!');
  } else {
    print('Descrição inválida.');
  }
}

void listar(List<String> tarefas, List<bool> concluidas)
{
  print('Tarefas pendentes:');
  bool temPendente = false;
  for (int i = 0; i < tarefas.length; i++) {
    if (!concluidas[i]) {
      print('- ${tarefas[i]}');
      temPendente = true;
    }
  }
  if (!temPendente) print('- Nenhuma');

  print('Tarefas concluídas:');
  bool temConcluida = false;
  for (int i = 0; i < tarefas.length; i++) {
    if (concluidas[i]) {
      print('- ${tarefas[i]}');
      temConcluida = true;
    }
  }
  if (!temConcluida) print('- Nenhuma');
}

void concluir(List<String> tarefas, List<bool> concluidas)
{
  List<int> pendentes = [];
  for (int i = 0; i < tarefas.length; i++) {
    if (!concluidas[i]) pendentes.add(i);
  }
  if (pendentes.isEmpty) {
    print('Nenhuma tarefa pendente para concluir.');
  } else {
    print('Qual tarefa deseja concluir?');
    for (int i = 0; i < pendentes.length; i++) {
      print('[${i + 1}] ${tarefas[pendentes[i]]}');
    }
    stdout.write('Escolha: ');
    String? escolha = stdin.readLineSync();
    int? idx = int.tryParse(escolha ?? '');
    if (idx != null && idx > 0 && idx <= pendentes.length) {
      concluidas[pendentes[idx - 1]] = true;
      print('Tarefa "${tarefas[pendentes[idx - 1]]}" concluída!');
    } else {
      print('Opção inválida.');
    }
  }
}

void salvar(List<String> tarefas, List<bool> concluidas, String arquivo)
{
  final file = File(arquivo);
  final sink = file.openWrite();
  for (int i = 0; i < tarefas.length; i++) {
    String status = concluidas[i] ? '(concluída)' : '';
    sink.writeln('${i + 1}. ${tarefas[i]} $status');
  }
  sink.close();
  print('Tarefas salvas em "$arquivo".');
}

void main()
{
  List<String> tarefas = [];
  List<bool> concluidas = [];
  final arquivo = 'tarefas.txt';

  int escolha;
  do{
    print('\nEscolha uma opção:');
    print('1. Adicionar tarefa');
    print('2. Listar tarefas');
    print('3. Marcar tarefa como concluída');
    print('4. Sair');
    stdout.write('Opção: ');
    escolha = int.parse(stdin.readLineSync()!);

    switch (escolha) {
      case 1:
        adicionar(tarefas, concluidas);
        break;
      case 2:
        listar(tarefas, concluidas);
        break;
      case 3:
        concluir(tarefas, concluidas);
        break;
      case 4:
        salvar(tarefas, concluidas, arquivo);
        print('Encerrando programa.');
        return;
      default:
        print('Opção inválida.');
    }

  } while (true);
}