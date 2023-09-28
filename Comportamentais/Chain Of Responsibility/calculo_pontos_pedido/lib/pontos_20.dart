import 'package:calculo_pontos_pedido/calculadora.dart';
import 'package:calculo_pontos_pedido/pedido.dart';

class Pontos20Reais implements Calculadora {

  late Calculadora proximo;
  
  @override
  int calcularPontos(Pedido pedido) {
    if (pedido.valor >= 20) {
      return pedido.valor ~/ 10;
    }

    return proximo.calcularPontos(pedido);
  }
  
  @override
  void setProximo(Calculadora proximo) {
    this.proximo = proximo;
  }
}
