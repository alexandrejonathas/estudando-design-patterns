import '../observes/observer.dart';

abstract class Subject {
  void addObserver(Observer observer);
  void removeObserver(Observer observer);
  void notify();
}