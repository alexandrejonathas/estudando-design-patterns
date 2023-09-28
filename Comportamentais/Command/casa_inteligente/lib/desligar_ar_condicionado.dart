import 'package:casa_inteligente/command.dart';
import 'package:casa_inteligente/fabricante/ar_condicionado.dart';

class DesligarArCondicionado implements Command {

  final ArCondicionado _arCondicionado;

  DesligarArCondicionado(this._arCondicionado);

  @override
  void executar() {
    _arCondicionado.desligar();
    _arCondicionado.imprimeObjeto();
  }

  @override
  void desfazer() {
    _arCondicionado.ligar();
    _arCondicionado.imprimeObjeto();
  }

}