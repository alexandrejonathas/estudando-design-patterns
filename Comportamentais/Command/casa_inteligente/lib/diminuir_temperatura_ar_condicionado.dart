import 'package:casa_inteligente/command.dart';
import 'package:casa_inteligente/fabricante/ar_condicionado.dart';

class DiminuirArCondicionado implements Command {

  final ArCondicionado _arCondicionado;

  DiminuirArCondicionado(this._arCondicionado);

  @override
  void executar() {
    var temperatura = _arCondicionado.temperatura - 1;
    _arCondicionado.temperatura = temperatura;
    _arCondicionado.imprimeObjeto();
  }

  @override
  void desfazer() {
    var temperatura = _arCondicionado.temperatura + 1;
    _arCondicionado.temperatura = temperatura;
    _arCondicionado.imprimeObjeto();
  }

}