import 'boleto.dart';
import 'calculos_factory.dart';

class Banco {
  Boleto gerarBoleto(double valor, CalculosFactory factory) {
    Boleto boleto = Boleto(valor, factory);
    
    print('Boleto gerado com sucesso no valor de R\$: $valor');
    print('Valor Juros R\$: ${boleto.calcularJuros()}');
    print('Valor Desconto R\$: ${boleto.calcularDesconto()}');
    print('Valor Multa R\$: ${boleto.calcularMulta()}\n');

    return boleto;
  }  
}