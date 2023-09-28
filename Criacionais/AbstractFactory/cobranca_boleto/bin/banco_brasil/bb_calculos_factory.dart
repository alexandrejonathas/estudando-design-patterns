import '../calculos_factory.dart';
import '../multa.dart';
import '../juros.dart';
import '../desconto.dart';
import 'bb_desconto.dart';
import 'bb_juros.dart';
import 'bb_multa.dart';

class BBCalculosFactory implements CalculosFactory {
  @override
  Desconto criarDesconto() {
    return BBDesconto();
  }

  @override
  Juros criarJuros() {
    return BBJuros();
  }

  @override
  Multa criarMulta() {
    return BBMulta();
  }

}