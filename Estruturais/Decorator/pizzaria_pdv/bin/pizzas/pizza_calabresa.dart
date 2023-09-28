import 'pizza.dart';

class PizzaCalabresa extends Pizza {

  PizzaCalabresa() {
    descricao = "Deliciosa pizza de calabresa";
  }

  @override
  String getDescricao() {
    return descricao;
  }

  @override
  double getPreco() {
    return 25.9;
  }

}