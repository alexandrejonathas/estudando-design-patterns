import 'observes/customer.dart';
import 'observes/employee.dart';
import 'subjects/newsletter.dart';

void main(List<String> arguments) {
  var newsletter = Newsletter();
  var customer1 = Customer("Customer 1", "customer1@email.com", newsletter);
  var customer2 = Customer("Customer 2", "customer2@email.com", newsletter);
  var employee1 = Employee("Employee 1", "employee1@email.com", newsletter);
  var partner1 = Employee("Partner 1", "partner1@email.com", newsletter);

  newsletter.addMessage("Primeira mensagem");

  print("\n\n\n##################\n\n\n");

  customer2.unsubscribe();

  newsletter.addMessage("Segunda mensagem");

}
