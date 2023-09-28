import 'banco/bb/banco_bb.dart';
import 'banco/cef/banco_cef.dart';

void main(List<String> arguments) {
  print('Gerando boleto caixa:');

  BancoCef().gerarBoleto(10, 100);
  BancoCef().gerarBoleto(30, 100);
  BancoCef().gerarBoleto(60, 100);

  print('\nGerando boleto banco do brasil:');  

  BancoBB().gerarBoleto(10, 100);
  BancoBB().gerarBoleto(30, 100);
  BancoBB().gerarBoleto(60, 100);

}
