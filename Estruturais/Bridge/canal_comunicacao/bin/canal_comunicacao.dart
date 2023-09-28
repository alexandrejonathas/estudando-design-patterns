import 'package:canal_comunicacao/canal_comunicacao_email.dart';
import 'package:canal_comunicacao/canal_comunicacao_sms.dart';
import 'package:canal_comunicacao/canal_comunicacao_whats.dart';
import 'package:canal_comunicacao/mensagem_admin.dart';
import 'package:canal_comunicacao/mensagem_usuario.dart';

void main(List<String> arguments) {
  var email = CanalComunicacaoEmail();
  var sms = CanalComunicacaoSMS();
  var mensagemAdminEmail = MensagemAdmin(email);

  mensagemAdminEmail.assunto = "Assunto Email";
  mensagemAdminEmail.mensagem = "Mensagem Email";

  mensagemAdminEmail.enviar();

  var mensagemAdminSms = MensagemAdmin(sms);
  mensagemAdminSms.assunto = "Assunto SMS";
  mensagemAdminSms.mensagem = "Mensagem SMS";

  mensagemAdminSms.enviar(); 
 
  var whats = CanalComunicacaoWhats();
  var mensagemAdminWhats = MensagemUsuario(whats);
  mensagemAdminWhats.assunto = "Assunto";
  mensagemAdminWhats.mensagem = "Mensagem";

  mensagemAdminWhats.enviar();  

}
