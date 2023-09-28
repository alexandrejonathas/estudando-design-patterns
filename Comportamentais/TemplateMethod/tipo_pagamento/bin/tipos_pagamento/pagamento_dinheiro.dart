import '../gateway/gateway.dart';
import 'pagamento.dart';

class PagamentoDinheiro extends Pagamento{

  PagamentoDinheiro(Gateway _gateway, double _valor): super(_gateway, _valor);

  @override
  double calcularDesconto() {
    return valor * 0.1;
  }
}
