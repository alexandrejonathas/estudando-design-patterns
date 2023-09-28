import 'pizza.dart';

abstract class AcrescimoDecorator extends Pizza {
  
  Pizza pizza;

  AcrescimoDecorator(this.pizza);

  @override
  String getDescricao();

  @override
  double getPreco();

}