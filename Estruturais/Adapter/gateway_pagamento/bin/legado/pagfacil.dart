class PagFacil {
  late double _valor;
  late int _parcelas;
  late String _numeroCartao;
  late String _cvv;

  bool validaCartao() {
    return _numeroCartao.isNotEmpty && _cvv.isNotEmpty && _cvv.length == 3;
  }

  bool realizaPagamento() {
    print("Pagamento realizado via PagFacil");
    return true;
  }


  void setValor(double valor) => _valor = valor;
  void setParcelas(int parcelas) => _parcelas = parcelas;
  void setNumerocartao(String numeroCartao) => _numeroCartao = numeroCartao;
  void setCvv(String cvv) => _cvv = cvv;
}