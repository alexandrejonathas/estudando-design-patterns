import '../legado/toppagamentos.dart';
import 'gateway.dart';

class TopPagamentosAdapter implements Gateway {

  String? _numeroCartao;
  String? _cvv;

  TopPagamentos _topPagamentos;

  TopPagamentosAdapter(this._topPagamentos);

  @override
  bool realizaPagamento() {
    return _topPagamentos.realizaPagamento();
  }

  @override
  void setCvv(String cvv) {
    _cvv = cvv;
    if(_numeroCartao != null) {
      _topPagamentos.setCartao(_numeroCartao!, _cvv!);
    }
  }

  @override
  void setNumerocartao(String numeroCartao) {
    _numeroCartao = numeroCartao;
    if(_cvv != null) {
      _topPagamentos.setCartao(_numeroCartao!, _cvv!);
    }
  }

  @override
  void setParcelas(int parcelas) {
    _topPagamentos.setQuantidadeParcelas(parcelas);
  }

  @override
  void setValor(double valor) {
    _topPagamentos.setValorTotal(valor);
  }

  @override
  bool validaCartao() {
    return true;
  }

  
}