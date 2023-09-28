import '../calculos_factory.dart';
import '../multa.dart';
import '../juros.dart';
import '../desconto.dart';
import 'cef_desconto.dart';
import 'cef_juros.dart';
import 'cef_multa.dart';

class CEFCalculosFactory implements CalculosFactory {
  @override
  Desconto criarDesconto() {
    return CEFDesconto();
  }

  @override
  Juros criarJuros() {
    return CEFJuros();
  }

  @override
  Multa criarMulta() {
    return CEFMulta();
  }

}