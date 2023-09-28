import '../orders/order.dart';
import 'state.dart';

class Shipping implements State {
  final Order _order;
  
  Shipping(this._order);

  @override
  void cancelOrder() {
    throw Exception("Operação não suportada, o pedido já foi enviado.");
  }

  @override
  void shippingOrder() {
    throw Exception("Operação não suportada, o pedido já foi enviado.");
  }

  @override
  void sucessPayment() {
    throw Exception("Operação não suportada, o pedido foi pago e enviado.");
  }

}