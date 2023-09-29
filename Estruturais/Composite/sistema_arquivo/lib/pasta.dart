import 'package:sistema_arquivo/componente.dart';

class Pasta extends Componente {

  final List<Componente> _componentes = [];
  
  Pasta(super._nome, super._caminho);

  @override
  void adicionar(Componente componente) {
    _componentes.add(componente);
  }

  @override
  void exibir() {
    print("--------------------------------");
    print(" - ${getNome()} - [${getCaminho()}]");
    _componentes.forEach((componente) { 
      componente.exibir(); 
    });
  }

  @override
  void remover(Componente component) {
    _componentes.remove(component);
  }

  @override
  Componente recuperarFilho(int indice) {
    return _componentes[indice];
  }

}
