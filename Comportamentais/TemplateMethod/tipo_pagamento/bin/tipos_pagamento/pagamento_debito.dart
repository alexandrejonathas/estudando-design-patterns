import '../gateway/gateway.dart';
import 'pagamento.dart';

class PagamentoDebito extends Pagamento {

  PagamentoDebito(Gateway _gateway, double _valor): super(_gateway, _valor);

  @override
  double calcularTaxa() {
    return 4;
  }

  @override
  double calcularDesconto() {
    return valor * 0.05;
  }

}
