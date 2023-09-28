import 'acrescimo_decorator.dart';
import 'pizza.dart';

class MassaIntegral extends AcrescimoDecorator {
  
  MassaIntegral(Pizza pizza) : super(pizza);

  @override
  String getDescricao() {
    return '${pizza.getDescricao()} com massa integral'; 
  }

  @override
  double getPreco() {
    return pizza.getPreco() + 5.0;
  }

}