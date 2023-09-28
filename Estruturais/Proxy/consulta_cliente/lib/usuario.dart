import 'package:consulta_cliente/pf_receita_federal_proxy.dart';
import 'package:consulta_cliente/receita_federal.dart';

class Usuario {
  final String _nome;
  final String _cpf;
  final int _idade;
  late ReceitaFederal _pfReceitaFederal;

  Usuario(this._nome, this._cpf, this._idade){
    _pfReceitaFederal = PFReceitaFederalProxy(_cpf);
  }

  bool validarNome() {
    return _nome == _pfReceitaFederal.getNome();
  }

  bool verificaCpfAtivo() {
    return _pfReceitaFederal.cpfAtivo();
  }  
  
  bool verificaMaiorIdade() {
    return _idade >= 18 && _idade == _pfReceitaFederal.getIdade();
  }  

  get nome => _nome;
  get idade => _idade;
  get cpf => _cpf;

}
