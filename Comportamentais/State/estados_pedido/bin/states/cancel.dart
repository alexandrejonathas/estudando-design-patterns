import '../orders/order.dart';
import 'state.dart';

class Cancel implements State {
  final Order _order;
  
  Cancel(this._order);

  @override
  void cancelOrder() {
    throw Exception("Operação não suportada, o pedido já foi cancelado.");
  }

  @override
  void shippingOrder() {
    throw Exception("Operação não suportada, o pedido se encontra cancelado.");
  }

  @override
  void sucessPayment() {
    throw Exception("Operação não suportada, o pedido se encontra cancelado.");
  }

}