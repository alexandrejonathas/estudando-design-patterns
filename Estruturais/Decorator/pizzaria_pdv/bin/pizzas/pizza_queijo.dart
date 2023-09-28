import 'pizza.dart';

class PizzaQueijo extends Pizza {

  PizzaQueijo() {
    descricao = "Deliciosa pizza de queijo";
  }

  @override
  String getDescricao() {
    return descricao;
  }

  @override
  double getPreco() {
    return 22.9;
  }

}