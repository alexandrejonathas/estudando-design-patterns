import 'calculos_factory.dart';
import 'desconto.dart';
import 'juros.dart';
import 'multa.dart';

class Boleto {
  double valor = 0;
  late Juros juros;
  late Desconto desconto;
  late Multa multa;

  Boleto(this.valor, CalculosFactory calculosFactory) {
    juros = calculosFactory.criarJuros();
    desconto = calculosFactory.criarDesconto();
    multa = calculosFactory.criarMulta();
  }

  double calcularJuros() {
    return valor * juros.getJuros();
  }
  double calcularDesconto() {
    return valor * desconto.getDesconto();
  }
  double calcularMulta(){
    return valor * multa.getMulta();
  }  
}