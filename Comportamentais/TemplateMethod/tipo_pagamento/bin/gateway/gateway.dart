import 'dart:math';

class Gateway {
  bool cobrar(double valor) {
    var respostas = [true, false];
    return respostas[Random().nextInt(2)];
  }
}