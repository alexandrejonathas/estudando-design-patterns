import 'package:calculo_pontos_pedido/calculadora.dart';
import 'package:calculo_pontos_pedido/pedido.dart';

class Pontos70Reais implements Calculadora {

  late Calculadora proximo;
  
  @override
  int calcularPontos(Pedido pedido) {
    if (pedido.valor >= 70) {
      return pedido.valor ~/ 5;
    }

    return proximo.calcularPontos(pedido);
  }
  
  @override
  setProximo(Calculadora proximo) {
    this.proximo = proximo;
  }
}
