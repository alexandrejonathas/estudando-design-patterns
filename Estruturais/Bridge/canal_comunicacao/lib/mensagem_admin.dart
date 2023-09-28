import 'package:canal_comunicacao/mensagen.dart';

class MensagemAdmin extends Mensagem {
  
  MensagemAdmin(super.canalComunicacao);

  @override
  void enviar() {
    print("Enviando msg pelo administrador:");
    canalComunicacao.enviarMensagem(assunto, mensagem);
  }
}