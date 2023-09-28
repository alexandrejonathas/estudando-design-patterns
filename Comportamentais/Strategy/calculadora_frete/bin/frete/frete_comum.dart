import 'frete_interface.dart';

class FreteComum implements IFrete {
  @override
  double calcular(double valor) {
    return valor * 0.05;
  }
}