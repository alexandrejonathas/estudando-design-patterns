abstract class Componente {

  final String _nome;
  final String _caminho;

  Componente(this._nome, this._caminho);

  String getNome() {
    return _nome;
  }
  
  String getCaminho() {
    return _caminho;
  }

  void exibir() {
    print(" - $_nome - [$_caminho]");
  }
  
  void adicionar(Componente componente) {
    throw UnimplementedError();
  }

  void remover(Componente componente) {
    throw UnimplementedError();
  }

  Componente recuperarFilho(int indice) {
    throw UnimplementedError();
  }
}