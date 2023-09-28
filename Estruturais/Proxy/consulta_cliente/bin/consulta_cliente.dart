import 'package:consulta_cliente/usuario.dart';

void main(List<String> arguments) {
  var inicio = DateTime.now();

  var pf = Usuario("João da Silva", "12345678912", 39);

  print("Nome: ${pf.nome}");

  print(pf.validarNome());

  var tempo = inicio.difference(DateTime.now());
  print("Tempo de execução: $tempo segundos.");
}
