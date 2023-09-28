class ArCondicionado {
  
  final String _identificacao;
  bool _estado;
  int _temperatura;

  ArCondicionado(this._identificacao, this._estado, this._temperatura);

  void ligar() {
    _estado = true;
  }

  void desligar() {
    _estado = false;
  }

  set temperatura(int temperatura) => _temperatura = temperatura;

  bool get estado => _estado;
  
  int get temperatura => _temperatura;

  void imprimeObjeto() => print('O objeto $_identificacao está ${_estado ? "ligado" :"desligado"}${_estado ? " a $_temperatura graus celsius." :"."}');

}
