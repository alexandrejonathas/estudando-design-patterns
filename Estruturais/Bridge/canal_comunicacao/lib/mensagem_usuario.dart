import 'package:canal_comunicacao/mensagen.dart';

class MensagemUsuario extends Mensagem {
  
  MensagemUsuario(super.canalComunicacao);

  @override
  void enviar() {
    print("Enviando msg pelo usuário:");
    canalComunicacao.enviarMensagem(assunto, mensagem);
  }
}