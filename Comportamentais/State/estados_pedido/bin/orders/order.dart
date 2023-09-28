import '../states/await_payment.dart';
import '../states/cancel.dart';
import '../states/payment.dart';
import '../states/shipping.dart';
import '../states/state.dart';

class Order {
  late State _state;
  late State _awaitPayment;
  late State _payment;
  late State _shipping;
  late State _canceled;

  Order() {
    _awaitPayment = AwaitPayment(this);
    _payment = Payment(this);
    _shipping = Shipping(this);
    _canceled = Cancel(this);
    
    state = awaitPayment;
  }

  void makePayment() {
    _state.sucessPayment();
  }

  void sentOrder() {
    _state.shippingOrder();
  }

  void cancelOrder() {
    _state.cancelOrder();
  }

  set state(State state) => _state = state;
  
  get awaitPayment => _awaitPayment;
  get payment => _payment;
  get shipping => _shipping;
  get canceled => _canceled;
}