import 'package:casa_inteligente/command.dart';
import 'package:casa_inteligente/fabricante/lampada.dart';

class DesligarLampada implements Command {

  final Lampada _lampada;

  DesligarLampada(this._lampada);

  @override
  void executar() {
    _lampada.desligar();
    _lampada.imprimeObjeto();
  }

  @override
  void desfazer() {
    _lampada.ligar();
    _lampada.imprimeObjeto();
  }

}