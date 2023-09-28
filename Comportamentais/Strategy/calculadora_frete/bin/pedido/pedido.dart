import '../frete/frete_interface.dart';

abstract class Pedido {
  late IFrete _frete;

  final double _valor;
  final String _nomeSetor;

  Pedido(this._nomeSetor, this._valor);

  set frete(IFrete frete) => _frete = frete;

  String get nomeSetor => _nomeSetor;
  double get valor => _valor;

  double clacularFrete() {
    return _frete.calcular(_valor);
  }

}
