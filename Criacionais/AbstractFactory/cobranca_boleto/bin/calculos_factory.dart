import 'desconto.dart';
import 'juros.dart';
import 'multa.dart';

abstract class CalculosFactory {
  Juros criarJuros();
  Desconto criarDesconto();
  Multa criarMulta();
}