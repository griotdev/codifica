import "dart:io";
void main(){

final double orcamento=100.0;
String p1str, p2str, p3str;

print("Insira o preço dos itens: ");

p1str = stdin.readLineSync() ?? "0";
p2str = stdin.readLineSync() ?? "0";
p3str = stdin.readLineSync() ?? "0" ;

double preco1 = double.tryParse(p1str) ?? 0;
double preco2 = double.tryParse(p2str) ?? 0;
double preco3 = double.tryParse(p3str) ?? 0;
double total = preco1 + preco2 + preco3;

if(orcamento >= total) {
      print("Dentro do orçamento!");
    }else{
      print("Orçamento estourado!");
    }

print("Custo Total: $total");

}

