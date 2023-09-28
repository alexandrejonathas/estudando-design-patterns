import 'package:casa_inteligente/command.dart';
import 'package:casa_inteligente/fabricante/lampada.dart';

class LigarLampada implements Command {

  Lampada _lampada;

  LigarLampada(this._lampada);

  @override
  void executar() {
    _lampada.ligar();
    _lampada.imprimeObjeto();
  }

  @override
  void desfazer() {
    _lampada.desligar();
    _lampada.imprimeObjeto();
  }

}