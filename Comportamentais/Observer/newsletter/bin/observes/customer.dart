import '../email.dart';
import '../subjects/subject.dart';
import 'observer.dart';

class Customer implements Observer {
  
  final String _name;
  final String _email;
  final Subject _subject;

  Customer(this._name, this._email, this._subject) {
    subscribe();
  }

  void subscribe() {
    _subject.addObserver(this);
  }

  void unsubscribe() {
    _subject.removeObserver(this);
  }
  
  @override
  String getEmail() {
    return _email;
  }

  @override
  String getName() {
    return _name;
  }

  @override
  void update(String message) {
    Email.enviar(this, message);
  }

}
