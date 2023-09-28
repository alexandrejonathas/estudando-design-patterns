
import 'boleto/abstract_boleto.dart';

abstract class Banco {

  Boleto criarBoleto(int vencimentoBoleto, double valor);

  Boleto gerarBoleto(int vencimentoBoleto, double valor) {
    Boleto boleto = criarBoleto(vencimentoBoleto, valor);
    
    print('Boleto gerado com sucesso no valor de R\$: $valor');
    print('Valor Juros R\$: ${boleto.calcularJuros()}');
    print('Valor Desconto R\$: ${boleto.calcularDesconto()}');
    print('Valor Multa R\$: ${boleto.calcularMulta()}\n');

    return boleto;
  }
}