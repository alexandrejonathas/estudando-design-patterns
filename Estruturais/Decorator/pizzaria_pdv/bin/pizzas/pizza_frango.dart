import 'pizza.dart';

class PizzaFrango extends Pizza {

  PizzaFrango() {
    descricao = "Deliciosa pizza de frango";
  }

  @override
  String getDescricao() {
    return descricao;
  }

  @override
  double getPreco() {
    return 19.9;
  }

}