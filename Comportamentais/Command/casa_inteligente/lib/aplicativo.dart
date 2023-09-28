import 'package:casa_inteligente/command.dart';

class Aplicativo {
  List<Command> comandos = [];
  
  int adicionaComando(Command comando) {
    comandos.add(comando);
    return comandos.length - 1;
  }

  void click(int indice) {
    comandos[indice].executar();
  }

  Command getComando(indice) => comandos[indice];
}