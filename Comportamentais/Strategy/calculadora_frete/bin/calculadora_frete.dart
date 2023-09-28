import 'frete/frete_comum.dart';
import 'frete/frete_expresso.dart';
import 'pedido/pedido_moveis.dart';

void main(List<String> arguments) {
  var pedido = PedidoMoveis("Móveis", 100);
  
  pedido.frete = FreteComum();
  print("FRETE_COMUM: ${pedido.clacularFrete()}");

  pedido.frete = FreteExpresso();
  print("FRETE_EXPRESSO: ${pedido.clacularFrete()}");  
}
