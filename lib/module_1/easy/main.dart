import 'package:writing_testable_code/module_1/easy/calculator.dart';

main(List<String> arguments) {
  var parts = double.parse(arguments[0]);

  var service = double.parse(arguments[1]);

  var discount = double.parse(arguments[2]);

  var calculator = Calculator();

  double total = calculator.getTotal(parts, service, discount);

  print('Total Price: $total');
}
