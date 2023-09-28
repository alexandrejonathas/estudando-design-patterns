import 'acrescimo_decorator.dart';
import 'pizza.dart';

class BordaRequeijao extends AcrescimoDecorator {
  
  BordaRequeijao(Pizza pizza) : super(pizza);

  @override
  String getDescricao() {
    return '${pizza.getDescricao()} com borda de requeijão'; 
  }

  @override
  double getPreco() {
    return pizza.getPreco() + 8.5;
  }

}