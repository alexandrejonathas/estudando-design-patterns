import 'package:calculo_pontos_pedido/pedido.dart';

abstract class Calculadora {
  int calcularPontos(Pedido pedido);
  setProximo(Calculadora proximo);
}