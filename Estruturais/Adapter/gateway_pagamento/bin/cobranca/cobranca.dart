import 'gateway.dart';

class Cobranca {
  Gateway _gateway;

  Cobranca(this._gateway);

  void setGateway(Gateway gateway) {
    _gateway = gateway;
  }

  bool realizarPagamento() {
    if(_gateway.validaCartao()) {
      return _gateway.realizaPagamento();
    }
    return false;
  }

  void setValor(double valor) => _gateway.setValor(valor);
  void setParcelas(int parcelas) => _gateway.setParcelas(parcelas);
  void setNumerocartao(String numeroCartao) => _gateway.setNumerocartao(numeroCartao);
  void setCvv(String cvv) => _gateway.setCvv(cvv);
}
