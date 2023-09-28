import 'pizzas/borda_requeijao.dart';
import 'pizzas/massa_integral.dart';
import 'pizzas/pizza_queijo.dart';

void main(List<String> arguments) {
  var pizzaQueijo = PizzaQueijo();
  print('Descrição: ${pizzaQueijo.getDescricao()}');
  print('Preço: ${pizzaQueijo.getPreco()}');

  var pizzaQueijoBordaRequeijao = BordaRequeijao(pizzaQueijo);
  print('Descrição: ${pizzaQueijoBordaRequeijao.getDescricao()}');
  print('Preço: ${pizzaQueijoBordaRequeijao.getPreco()}');

  var pizzaQueijoBordaRequeijaoMassaIntegral = MassaIntegral(pizzaQueijoBordaRequeijao);
  print('Descrição: ${pizzaQueijoBordaRequeijaoMassaIntegral.getDescricao()}');
  print('Preço: ${pizzaQueijoBordaRequeijaoMassaIntegral.getPreco()}');
}
