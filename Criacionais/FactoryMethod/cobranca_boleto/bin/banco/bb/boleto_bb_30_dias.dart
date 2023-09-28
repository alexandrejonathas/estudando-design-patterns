import '../boleto/abstract_boleto.dart';

class BoletoBB30Dias extends Boleto{
  
  BoletoBB30Dias(double valor) : super(valor) {
    juros = 0.05;
    desconto = 0.02;
    multa = 0.05;
  }

}