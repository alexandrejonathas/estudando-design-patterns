import '../boleto/abstract_boleto.dart';

class BoletoBB60Dias extends Boleto{
  
  BoletoBB60Dias(double valor) : super(valor) {
    juros = 0.1;
    multa = 0.15;
  }
}