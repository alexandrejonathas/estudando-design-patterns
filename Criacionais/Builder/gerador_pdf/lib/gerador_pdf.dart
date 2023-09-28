class GeradorPDF {

  String pageOrientation = 'portrait';
  String unit = 'mm';
  int pageSizeX = 210;
  int pageSizeY = 297;
  int marginTop = 30;
  int marginRight = 20;
  int marginBottom = 30;
  int marginLeft = 20;
  bool hasHeader = false;
  int headerHeight = 0;
  bool hasFooter = false;
  int footerHeight = 0;
  String pageColor = '#FFFFFF';
  String encode = 'UTF-8';

  GeradorPDF();


  @override
  String toString() {
    return 'GeradorPDF(pageOrientation: $pageOrientation, unit: $unit, pageSizeX: $pageSizeX, pageSizeY: $pageSizeY, marginTop: $marginTop, marginRight: $marginRight, marginBottom: $marginBottom, marginLeft: $marginLeft, hasHeader: $hasHeader, headerHeight: $headerHeight, hasFooter: $hasFooter, footerHeight: $footerHeight, pageColor: $pageColor, encode: $encode)';
  }
}
