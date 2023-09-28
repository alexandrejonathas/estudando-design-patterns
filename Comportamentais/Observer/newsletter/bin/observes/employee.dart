import '../email.dart';
import '../subjects/subject.dart';
import 'observer.dart';

class Employee implements Observer {
  
  final String _name;
  final String _email;
  final Subject _subject;

  Employee(this._name, this._email, this._subject){
    _subject.addObserver(this);
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
