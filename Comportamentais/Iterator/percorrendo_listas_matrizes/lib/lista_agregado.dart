import 'package:percorrendo_listas_matrizes/agregado.dart';
import 'package:percorrendo_listas_matrizes/lista_iterator.dart';

class ListaAgregado implements Agregado {

  var lista = [];
  int tamanho = 0;

  ListaAgregado(this.tamanho);

  void add(item) {
    if (lista.length < tamanho) {
      lista.add(item);
    }
  }

  get(i) {
    return lista[i];
  }

  length() {
    return tamanho;
  }

  @override
  getIterator() {
    return ListaIterator(this);
  }

}