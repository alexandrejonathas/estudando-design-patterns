import 'package:percorrendo_listas_matrizes/iterator.dart';

class MatrizIterator implements IIterator {
  
  var _matriz = [];
  var indiceLinha = 0;
  var indiceColuna = 0;

  var qtdLinhas = 0;
  var qtdColunas = 0;

  MatrizIterator(this._matriz) {
    qtdLinhas = _matriz.length;
    qtdColunas = _matriz[0].length;
  }

  @override
  bool hasNext() {
    return indiceLinha < qtdLinhas;
  }

  @override
  next() {
    var item = _matriz[indiceLinha][indiceColuna];

    if(indiceColuna == (qtdColunas - 1)) {
      indiceLinha++;
      indiceColuna = 0;
    } else {
      indiceColuna++;
    }

    return item;
  }

}