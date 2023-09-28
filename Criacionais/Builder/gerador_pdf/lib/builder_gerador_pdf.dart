import 'package:gerador_pdf/gerador_pdf.dart';

abstract class BuilderGeradorPDF {
  GeradorPDF build();
  void setPageConfiguration();
  void setMargin();
  void setHeader();
  void setFooter();
}