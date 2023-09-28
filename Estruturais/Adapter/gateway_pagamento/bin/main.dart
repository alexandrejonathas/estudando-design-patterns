import 'cobranca/cobranca.dart';
import 'cobranca/pagfacil_adapter.dart';
import 'cobranca/toppagamentos_adapter.dart';
import 'legado/toppagamentos.dart';

void main(List<String> arguments) {
  var cobranca = Cobranca(PagFacilAdapter());
  cobranca.setValor(100);
  cobranca.setParcelas(3);
  cobranca.setNumerocartao("1234567890");
  cobranca.setCvv("123");

  if (cobranca.realizarPagamento()) {
    print(" - sucesso no pagamento\n");
  } else {
    print(" - falha no pagamento \n");
  }

  print("##############################################################");
  var topPagamentos = TopPagamentosAdapter(TopPagamentos());
  cobranca.setGateway(topPagamentos);
  cobranca.setValor(100);
  cobranca.setParcelas(3);
  cobranca.setNumerocartao("1234567890");
  cobranca.setCvv("123");

  if (cobranca.realizarPagamento()) {
    print(" - sucesso no pagamento\n");
  } else {
    print(" - falha no pagamento \n");
  }  


}
