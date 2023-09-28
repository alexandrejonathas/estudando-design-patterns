import 'package:gerador_pdf/builder_gerador_pdf.dart';
import 'package:gerador_pdf/gerador_pdf.dart';

class BuilderA3 implements BuilderGeradorPDF{
  late GeradorPDF _geradorPDF;

  BuilderA3() {
    _geradorPDF = GeradorPDF();
  }

  @override
  GeradorPDF build() {
    return _geradorPDF;
  }
  
  @override
  void setFooter() {
    _geradorPDF.hasFooter = false;
    _geradorPDF.footerHeight = 0;
  }
  
  @override
  void setHeader() {
    _geradorPDF.hasHeader = false;
    _geradorPDF.headerHeight = 0;
  }
  
  @override
  void setMargin() {
    _geradorPDF.marginLeft = 60;
    _geradorPDF.marginTop = 40;
    _geradorPDF.marginRight = 60;
    _geradorPDF.marginBottom = 40;
  }
  
  @override
  void setPageConfiguration() {
    _geradorPDF.pageOrientation = 'portrait';
    _geradorPDF.unit = 'mm';
    _geradorPDF.pageSizeX = 297;
    _geradorPDF.pageSizeY = 420;
    _geradorPDF.encode = 'UTF-8';
    _geradorPDF.pageColor = '#FFFFFF';
  }
}