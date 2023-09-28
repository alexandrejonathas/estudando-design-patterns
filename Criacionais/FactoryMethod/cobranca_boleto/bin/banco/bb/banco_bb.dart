import '../banco.dart';
import '../boleto/abstract_boleto.dart';
import 'boleto_bb_10_dias.dart';
import 'boleto_bb_30_dias.dart';
import 'boleto_bb_60_dias.dart';

class BancoBB extends Banco {

  @override
  Boleto criarBoleto(int vencimentoBoleto, double valor) {
    switch (vencimentoBoleto) {
      case 10:
        return BoletoBB10Dias(valor);
      case 30:
        return BoletoBB30Dias(valor);
      case 60:
        return BoletoBB60Dias(valor);
      default:
        throw Exception("Vencimento indisponível");
    }
  }
  
}