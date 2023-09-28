import '../observes/observer.dart';
import 'subject.dart';

class Newsletter implements Subject {
  
  final List<Observer> _observers = []; 
  final List<String> _messages = [];

  @override
  void addObserver(Observer observer) {
    _observers.add(observer);
  }

  @override
  void removeObserver(Observer observer) {
    _observers.remove(observer);
  }

  @override
  void notify() {
    for(Observer observer in _observers) {
      observer.update(_messages.last);
    }  
  }

  void addMessage(String message) {
    _messages.add(message);
    notify();
  }

}