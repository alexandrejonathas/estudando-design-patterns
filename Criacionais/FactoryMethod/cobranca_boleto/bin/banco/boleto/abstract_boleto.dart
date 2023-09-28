abstract class Boleto {
  double valor = 0;
  double juros = 0;
  double desconto = 0;
  double multa = 0;

  Boleto(this.valor);

  double calcularJuros() {
    return valor * juros;
  }
  double calcularDesconto() {
    return valor * desconto;
  }
  double calcularMulta(){
    return valor * multa;
  }
}