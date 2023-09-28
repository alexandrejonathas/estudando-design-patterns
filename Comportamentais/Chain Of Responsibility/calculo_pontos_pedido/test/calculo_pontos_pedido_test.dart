import 'package:calculo_pontos_pedido/calculadora_pontos.dart';
import 'package:calculo_pontos_pedido/pedido.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    var pedido = Pedido(70.0);
    var calcularodaPontos =  CalculadoraPontos();
    expect(calcularodaPontos.calcularPontosDoPedido(pedido, 15), 14);
  });

  test('calculate double', () {
    var pedido = Pedido(70.0);
    var calcularodaPontos =  CalculadoraPontos();
    expect(calcularodaPontos.calcularPontosDoPedido(pedido, 16), 28);
  });

  test('calculate order with total 20', () {
    var pedido = Pedido(20.0);
    var calcularodaPontos =  CalculadoraPontos();
    expect(calcularodaPontos.calcularPontosDoPedido(pedido, 15), 2);
  });

  test('calculate order with total 20 and day 16', () {
    var pedido = Pedido(20.0);
    var calcularodaPontos =  CalculadoraPontos();
    expect(calcularodaPontos.calcularPontosDoPedido(pedido, 16), 4);
  });

  test('calculate order with total 40', () {
    var pedido = Pedido(40.0);
    var calcularodaPontos =  CalculadoraPontos();
    expect(calcularodaPontos.calcularPontosDoPedido(pedido, 15), 5);
  });

  test('calculate order with total 40 and day 16', () {
    var pedido = Pedido(40.0);
    var calcularodaPontos =  CalculadoraPontos();
    expect(calcularodaPontos.calcularPontosDoPedido(pedido, 16), 10);
  });         
}
