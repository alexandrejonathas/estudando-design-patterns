import 'package:calculo_pontos_pedido/calculadora_pontos.dart';
import 'package:calculo_pontos_pedido/pedido.dart';

void main(List<String> arguments) {
  var calculadoraPontos = CalculadoraPontos();
  var pedido = Pedido(70);
  print("Pontos do pedido: ${calculadoraPontos.calcularPontosDoPedido(pedido, 15)}");
}
