import '../boleto/abstract_boleto.dart';

class BoletoBB10Dias extends Boleto{
  
  BoletoBB10Dias(double valor) : super(valor) {
    juros = 0.03;
    desconto = 0.05;
    multa = 0.02;
  }
}