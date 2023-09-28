import 'package:calculo_pontos_pedido/calculadora.dart';
import 'package:calculo_pontos_pedido/pedido.dart';

class NenhumPonto implements Calculadora {

  late Calculadora proximo;
  
  @override
  int calcularPontos(Pedido pedido) {
    return 0;
  }
  
  @override
  setProximo(Calculadora proximo) {
    throw Exception("Nenhum ponto é o ultimo objeto da cadeia");
  }
}
