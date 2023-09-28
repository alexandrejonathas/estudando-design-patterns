import 'package:consulta_cliente/pf_receita_federal.dart';
import 'package:consulta_cliente/receita_federal.dart';

class PFReceitaFederalProxy implements ReceitaFederal {
  final String _cpf;
  PFReceitaFederal? _pfReceitaFederal;

  PFReceitaFederalProxy(this._cpf);

  void _criarPFReceitaFederal() {
    _pfReceitaFederal ??= PFReceitaFederal(_cpf);
  }

  @override
  String getNome() {
    _criarPFReceitaFederal();
    return _pfReceitaFederal!.getNome();
  }

  @override
  getIdade() {
    _criarPFReceitaFederal();
    return _pfReceitaFederal!.getIdade();
  }  

  @override
  bool cpfAtivo() {
    _criarPFReceitaFederal();
    return _pfReceitaFederal!.cpfAtivo();
  }   

}