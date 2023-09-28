import 'package:canal_comunicacao/canal_envio.dart';

class CanalComunicacaoWhats implements CanalComunicacao {
  
  @override
  void enviarMensagem(String assunto, String mensagem) {
    print("Assunto: $assunto");
    print("mensagem: $mensagem");
  }

}