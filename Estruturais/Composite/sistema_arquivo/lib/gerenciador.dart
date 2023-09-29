import 'package:sistema_arquivo/componente.dart';

class Gerenciador {
  
  Componente _raiz;

  Gerenciador(this._raiz);

  void exibirTodos() {
    _raiz.exibir();
  }

}