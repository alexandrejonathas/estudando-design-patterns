import '../orders/order.dart';
import 'state.dart';

class Payment implements State {
  final Order _order;
  
  Payment(this._order);

  @override
  void cancelOrder() {
    _order.state = _order.canceled;
    print("pedido cancelado");
  }

  @override
  void shippingOrder() {
    _order.state = _order.shipping;
    print("pedido enviado");
  }

  @override
  void sucessPayment() {
    throw Exception("Operação não suportada, o pedido já foi pagp.");
  }

}