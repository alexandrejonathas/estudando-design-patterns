import 'dart:io';

import 'package:consulta_cliente/receita_federal.dart';

class PFReceitaFederal implements ReceitaFederal {
  final String _cpf;
  
  late String _nome;
  late int _idade;
  late bool _cpfAtivo;

  PFReceitaFederal(this._cpf) {
    _nome = "João da Silva";
    _idade = 39;
    _cpfAtivo = true;

    sleep(Duration(seconds: 5));
    print("PFReceitaFederal criada com sucesso");
  }

 @override
  String getNome() {
    sleep(Duration(seconds: 2));
    return _nome;
  }

  @override
  getIdade() {
    sleep(Duration(seconds: 2));
    return _idade;
  }  

  @override
  bool cpfAtivo() {
    sleep(Duration(seconds: 3));
    return _cpfAtivo;
  }    

}