class TopPagamentos {
  late double _valorTotal;
  late int _quantidadeParcelas;
  late String _numeroCartao;
  late String _cvv;

  bool realizaPagamento() {
    print("Pagamento realizado via TopPagamentos");
    return true;
  }

  void setValorTotal(double valor) {
    _valorTotal = valor;
  }
  void setQuantidadeParcelas(int parcelas) {
    _quantidadeParcelas = parcelas;
  }
  void setCartao(String numeroCartao, String cvv) {
    _numeroCartao = numeroCartao;
    _cvv = cvv;
  } 

}