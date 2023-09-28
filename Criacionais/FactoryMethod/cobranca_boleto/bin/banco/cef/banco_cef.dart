import '../banco.dart';
import '../boleto/abstract_boleto.dart';
import 'boleto_cef_10_dias.dart';
import 'boleto_cef_30_dias.dart';
import 'boleto_cef_60_dias.dart';

class BancoCef extends Banco {

  @override
  Boleto criarBoleto(int vencimentoBoleto, double valor) {
    switch (vencimentoBoleto) {
      case 10:
        return BoletoCef10Dias(valor);
      case 30:
        return BoletoCef30Dias(valor);
      case 60:
        return BoletoCef60Dias(valor);
      default:
        throw Exception("Vencimento indisponível");
    }
  }
}