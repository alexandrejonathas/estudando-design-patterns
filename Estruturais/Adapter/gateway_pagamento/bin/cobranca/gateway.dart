abstract class Gateway {
  bool validaCartao();
  bool realizaPagamento();
  void setValor(double valor);
  void setParcelas(int parcelas);
  void setNumerocartao(String numeroCartao);
  void setCvv(String cvv);  
}