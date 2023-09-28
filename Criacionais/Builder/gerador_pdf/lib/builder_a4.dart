import 'package:gerador_pdf/builder_gerador_pdf.dart';
import 'package:gerador_pdf/gerador_pdf.dart';

class BuilderA4 implements BuilderGeradorPDF{
  late GeradorPDF _geradorPDF;

  BuilderA4() {
    _geradorPDF = GeradorPDF();
  }

  @override
  GeradorPDF build() {
    return _geradorPDF;
  }
  
  @override
  void setFooter() {
    _geradorPDF.hasFooter = true;
    _geradorPDF.footerHeight = 15;
  }
  
  @override
  void setHeader() {
    _geradorPDF.hasHeader = true;
    _geradorPDF.headerHeight = 15;
  }
  
  @override
  void setMargin() {
    _geradorPDF.marginLeft = 30;
    _geradorPDF.marginTop = 20;
    _geradorPDF.marginRight = 30;
    _geradorPDF.marginBottom = 20;
  }
  
  @override
  void setPageConfiguration() {
    _geradorPDF.pageOrientation = 'portrait';
    _geradorPDF.unit = 'mm';
    _geradorPDF.pageSizeX = 210;
    _geradorPDF.pageSizeY = 297;
    _geradorPDF.encode = 'UTF-8';
    _geradorPDF.pageColor = '#FFFFFF';
  }
}