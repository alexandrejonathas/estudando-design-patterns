import 'package:canal_comunicacao/canal_envio.dart';

abstract class Mensagem {
  late String _assunto;
  late String _mensagem;

  CanalComunicacao canalComunicacao;

  Mensagem(this.canalComunicacao);

  set assunto(assunto) => _assunto = assunto;
  get assunto => _assunto;

  set mensagem(mensagem) => _mensagem = mensagem;
  get mensagem => _mensagem;

  void enviar();
}
