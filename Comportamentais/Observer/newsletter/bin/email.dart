import 'observes/observer.dart';

class Email {
  static void enviar(Observer observer, String message){
    print("------------------------------------------------------------\n");
    print("Email enviado para ${observer.getName()} - ${observer.getEmail()}\n");
    print("Mensagem: $message");
  }
}