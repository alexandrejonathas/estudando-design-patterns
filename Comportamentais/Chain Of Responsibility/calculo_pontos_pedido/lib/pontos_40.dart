import 'package:calculo_pontos_pedido/calculadora.dart';
import 'package:calculo_pontos_pedido/pedido.dart';

class Pontos40Reais implements Calculadora {

  late Calculadora proximo;

  int calcularPontosDoPedido(Pedido pedido, int dia) {
    var pontos = 0;
    if (pedido.valor >= 70) {
      pontos = pedido.valor ~/ 5;
    } else if (pedido.valor >= 40) {
      
    } else if (pedido.valor >= 20) {
      pontos = pedido.valor ~/ 10;
    } else {
      return pontos;
    }
    
    if (dia >= 16 && dia <= 31) {
      pontos *= 2;
    }

    return pontos;
  }
  
  @override
  int calcularPontos(Pedido pedido) {
    if (pedido.valor >= 40) {
      return pedido.valor ~/ 7;
    }
    
    return proximo.calcularPontos(pedido);
  }
  
  @override
  setProximo(Calculadora proximo) {
    this.proximo = proximo;
  }
}
