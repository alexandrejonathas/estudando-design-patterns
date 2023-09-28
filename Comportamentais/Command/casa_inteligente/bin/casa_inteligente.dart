import 'package:casa_inteligente/aplicativo.dart';
import 'package:casa_inteligente/diminuir_temperatura_ar_condicionado.dart';
import 'package:casa_inteligente/fabricante/ar_condicionado.dart';
import 'package:casa_inteligente/fabricante/lampada.dart';
import 'package:casa_inteligente/ligar_ar_condicionado.dart';
import 'package:casa_inteligente/ligar_lampada.dart';

void main(List<String> arguments) {
  var lampadaSala = Lampada("Lampada sala", false);
  var arCondicionado = ArCondicionado("Ar condicionado", true, 26);

  var aplicativo = Aplicativo();

  var ligarLampadaSala =  LigarLampada(lampadaSala);
  var indiceLampadaSala =  aplicativo.adicionaComando(ligarLampadaSala);
  aplicativo.click(indiceLampadaSala);

  var ligarArcondicionado =  LigarArCondicionado(arCondicionado);
  var indiceArcondicionado =  aplicativo.adicionaComando(ligarArcondicionado);
  aplicativo.click(indiceArcondicionado);

  var diminuirArcondicionado =  DiminuirArCondicionado(arCondicionado);
  var indiceDiminuirArcondicionado =  aplicativo.adicionaComando(diminuirArcondicionado);
  aplicativo.click(indiceDiminuirArcondicionado);
  aplicativo.click(indiceDiminuirArcondicionado);

}
