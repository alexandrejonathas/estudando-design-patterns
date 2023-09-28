class Lampada {
  
  final String _identificacao;
  bool _estado;

  Lampada(this._identificacao, this._estado);

  void ligar() {
    _estado = true;
  }

  void desligar() {
    _estado = false;
  }

  bool getEstado() => _estado;
  
  void imprimeObjeto() => print('O objeto $_identificacao está ${_estado ? "ligado." :"desligado."}');

}
