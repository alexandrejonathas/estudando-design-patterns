import '../gateway/gateway.dart';

abstract class Pagamento {
  final Gateway gateway;
  final double valor;

  Pagamento(this.gateway, this.valor);

  double calcularTaxa() {
    return 0;
  }

  double calcularDesconto();

  bool realizarCobranca() {
    var valorFinal = valor + calcularTaxa() - calcularDesconto();
    
    print("Valor: $valor | Taxa: ${calcularTaxa()} | Desconto: ${calcularDesconto()} | Total: $valorFinal");

    return gateway.cobrar(valorFinal);
  }  
}