import 'banco.dart';
import 'banco_brasil/bb_calculos_factory.dart';
import 'caixa_economica/cef_calculos_factory.dart';

void main(List<String> arguments) {

  var banco = Banco();
  
  print('Gerando boleto caixa:');
  banco.gerarBoleto(100, CEFCalculosFactory());

  print('\nGerando boleto banco do brasil:');  
  banco.gerarBoleto(100, BBCalculosFactory());

}
