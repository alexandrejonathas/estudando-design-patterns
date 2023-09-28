import 'package:percorrendo_listas_matrizes/iterator.dart';
import 'package:percorrendo_listas_matrizes/lista_agregado.dart';

class ListaIterator implements IIterator {
  
  ListaAgregado _lista;
  var _indice = 0;
  var _tamanho = 0;
  ListaIterator(this._lista){
    _tamanho = _lista.length();
  }

  @override
  bool hasNext() {
    return _indice < _tamanho;
  }

  @override
  next() {
    var item = _lista.get(_indice);
    _indice++;

    return item;
  }

}