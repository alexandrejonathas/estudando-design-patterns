import 'frete_interface.dart';

class FreteExpresso implements IFrete {
  @override
  double calcular(double valor) {
    return valor * 0.1;
  }

}