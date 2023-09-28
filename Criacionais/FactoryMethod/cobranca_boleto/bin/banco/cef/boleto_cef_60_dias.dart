import '../boleto/abstract_boleto.dart';

class BoletoCef60Dias extends Boleto{
  
  BoletoCef60Dias(double valor) : super(valor) {
    juros = 0.1;
    multa = 0.2;
  }
}