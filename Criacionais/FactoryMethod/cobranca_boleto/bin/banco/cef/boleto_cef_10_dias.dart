import '../boleto/abstract_boleto.dart';

class BoletoCef10Dias extends Boleto{
  
  BoletoCef10Dias(double valor) : super(valor) {
    juros = 0.02;
    desconto = 0.1;
    multa = 0.05;
  }
}