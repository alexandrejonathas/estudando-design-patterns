import '../gateway/gateway.dart';
import 'pagamento.dart';

class PagamentoCredito extends Pagamento{

  PagamentoCredito(Gateway _gateway, double _valor): super(_gateway, _valor);

  @override
  double calcularTaxa() {
    return valor * 0.05;
  }

  @override
  double calcularDesconto() {
    if(valor > 300) {
      return valor * 0.02;
    }
    return 0;
  }
}