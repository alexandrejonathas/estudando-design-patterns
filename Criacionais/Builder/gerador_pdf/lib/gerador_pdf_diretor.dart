import 'package:gerador_pdf/builder_gerador_pdf.dart';

class GeradorPDFDiretor {
  BuilderGeradorPDF _builderGeradorPDF;

  GeradorPDFDiretor(this._builderGeradorPDF);

  void setBuilderGeradorPDF(BuilderGeradorPDF builderGeradorPDF) {
    _builderGeradorPDF = builderGeradorPDF;
  }

  void criarGeradorPDF() {
    _builderGeradorPDF.setPageConfiguration();
    _builderGeradorPDF.setMargin();
    _builderGeradorPDF.setHeader(); 
    _builderGeradorPDF.setFooter();
  }

  void criarGeradorPDFSemHeader() {
    _builderGeradorPDF.setPageConfiguration();
    _builderGeradorPDF.setMargin(); 
    _builderGeradorPDF.setFooter();
  }

  void criarGeradorPDFSemFooter() {
    _builderGeradorPDF.setPageConfiguration();
    _builderGeradorPDF.setMargin();
    _builderGeradorPDF.setHeader();
  }    
}