import 'gateway/gateway.dart';
import 'tipos_pagamento/pagamento_credito.dart';
import 'tipos_pagamento/pagamento_debito.dart';
import 'tipos_pagamento/pagamento_dinheiro.dart';

void main(List<String> arguments) {
  var valor = 1000.0;
  var gateway = Gateway();

  var dinheiro = PagamentoDinheiro(gateway, valor);

  print("DINHEIRO: ${dinheiro.realizarCobranca()}");

  var debito = PagamentoDebito(gateway, valor);
  print("DEBITO: ${debito.realizarCobranca()}");

  var credito = PagamentoCredito(gateway, valor);
  print("CREDITO: ${credito.realizarCobranca()}");
}
