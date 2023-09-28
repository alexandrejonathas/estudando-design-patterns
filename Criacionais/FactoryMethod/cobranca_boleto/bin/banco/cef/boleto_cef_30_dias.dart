import '../boleto/abstract_boleto.dart';

class BoletoCef30Dias extends Boleto{
  
  BoletoCef30Dias(double valor) : super(valor) {
    juros = 0.05;
    desconto = 0.05;
    multa = 0.1;
  }

}