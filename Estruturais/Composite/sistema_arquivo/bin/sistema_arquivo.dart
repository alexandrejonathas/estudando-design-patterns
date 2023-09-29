import 'package:sistema_arquivo/arquivo.dart';
import 'package:sistema_arquivo/gerenciador.dart';
import 'package:sistema_arquivo/pasta.dart';

void main(List<String> arguments) {
  var raiz = Pasta("Raiz", "/");
  var pasta1 = Pasta("Pasta 1", "Pasta 1/");
  var pasta2 = Pasta("Pasta 2", "Pasta 2/");
  var pasta21 = Pasta("Pasta 2.1", "Pasta 2-1/");
  var pasta3 = Pasta("Pasta 3", "Pasta 3/");

  raiz.adicionar(pasta1);
  raiz.adicionar(pasta2);
  raiz.adicionar(pasta3);

  var arquivo1 = Arquivo("Arquivo 1", "/arquivo1");
  var arquivo2 = Arquivo("Arquivo 2", "/arquivo2");
  var arquivo3 = Arquivo("Arquivo 3", "/arquivo3");
  var arquivo4 = Arquivo("Arquivo 4", "/arquivo4");
  var arquivo5 = Arquivo("Arquivo 5", "/arquivo5");
  var arquivo6 = Arquivo("Arquivo 6", "/arquivo6");

  pasta1.adicionar(arquivo1);
  pasta1.adicionar(arquivo2);

  pasta2.adicionar(arquivo3);
  pasta2.adicionar(arquivo4);  

  pasta21.adicionar(arquivo5);
  pasta2.adicionar(pasta21);


  pasta3.adicionar(arquivo6);

  var gerenciador = Gerenciador(raiz);

  gerenciador.exibirTodos();
}
