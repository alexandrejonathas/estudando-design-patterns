import 'package:gerador_pdf/builder_a3.dart';
import 'package:gerador_pdf/builder_a4.dart';
import 'package:gerador_pdf/gerador_pdf_diretor.dart';

void main() {
  var builderA4 = BuilderA4();

  var diretor = GeradorPDFDiretor(builderA4);
  diretor.criarGeradorPDFSemHeader();

  var pdfA4 = builderA4.build();
  print("GeradorPDF A4: $pdfA4");

  var builderA3 = BuilderA3();

  diretor.setBuilderGeradorPDF(builderA3);
  diretor.criarGeradorPDF();

  var pdfA3 = builderA3.build();
  print("GeradorPDF A3: $pdfA3");

}
