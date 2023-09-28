import 'package:calculo_pontos_pedido/nenhum_ponto.dart';
import 'package:calculo_pontos_pedido/pedido.dart';
import 'package:calculo_pontos_pedido/pontos_20.dart';
import 'package:calculo_pontos_pedido/pontos_40.dart';
import 'package:calculo_pontos_pedido/pontos_70.dart';

class CalculadoraPontos {
  int calcularPontosDoPedido(Pedido pedido, int dia) {
    var pontos70 = Pontos70Reais();
    var pontos40 = Pontos40Reais();
    var pontos20 = Pontos20Reais();
    var nenhumPonto = NenhumPonto();

    pontos70.setProximo(pontos40);
    pontos40.setProximo(pontos20);
    pontos20.setProximo(nenhumPonto);

    var pontos = pontos70.calcularPontos(pedido);

    if (dia >= 16 && dia <= 31) {
      pontos *= 2;
    }

    return pontos;
  }
}
