import '../orders/order.dart';
import 'state.dart';

class AwaitPayment implements State {
  final Order _order;
  
  AwaitPayment(this._order);

  @override
  void cancelOrder() {
    _order.state = _order.canceled;
    print("pedido cancelado");
  }

  @override
  void shippingOrder() {
    throw Exception("Operação não suportada, pedido ainda não foi pago");
  }

  @override
  void sucessPayment() {
    _order.state = _order.payment;
    print("pagamento realizado");
  }

}