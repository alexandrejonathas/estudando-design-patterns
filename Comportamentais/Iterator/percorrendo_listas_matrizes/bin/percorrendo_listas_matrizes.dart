import 'package:percorrendo_listas_matrizes/lista_agregado.dart';
import 'package:percorrendo_listas_matrizes/lista_iterator.dart';
import 'package:percorrendo_listas_matrizes/matriz_iterator.dart';

void main(List<String> arguments) {
  var lista = ListaAgregado(9);

  lista.add(1);
  lista.add(2);
  lista.add(3);
  lista.add(4);
  lista.add(5);
  lista.add(6);
  lista.add(7);
  lista.add(8);
  lista.add(9);
  lista.add(10);
  lista.add(11);
  lista.add(12);

  var matriz = [
    [1,2,3],
    [4,5,6],
    [7,8,9]
  ];

  print("Elementos da Lista");
  var listaIterator = ListaIterator(lista);

  while(listaIterator.hasNext()) {
    print(listaIterator.next());
  }

  print("Elementos da Matriz");
  var matrizIterator = MatrizIterator(matriz);
   while(matrizIterator.hasNext()) {
    print(matrizIterator.next());
  }
}
