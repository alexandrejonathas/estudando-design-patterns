import '../desconto.dart';

class BBDesconto implements Desconto {
  @override
  double getDesconto() {
    return 0.05;
  }

}