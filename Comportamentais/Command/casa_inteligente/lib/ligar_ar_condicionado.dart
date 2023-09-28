import 'package:casa_inteligente/command.dart';
import 'package:casa_inteligente/fabricante/ar_condicionado.dart';

class LigarArCondicionado implements Command {

  final ArCondicionado _arCondicionado;

  LigarArCondicionado(this._arCondicionado);

  @override
  void executar() {
    _arCondicionado.ligar();
    _arCondicionado.imprimeObjeto();
  }

  @override
  void desfazer() {
    _arCondicionado.desligar();
    _arCondicionado.imprimeObjeto();
  }

}