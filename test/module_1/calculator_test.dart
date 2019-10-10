import 'package:test/test.dart';
import 'package:writing_testable_code/module_1/easy/calculator.dart';

void main() {
  test('Get total should return total price', () {
    var calculator = Calculator();

    var result = calculator.getTotal(1.0, 2.0, 0.5);

    expect(result, 2.5);
  });
}
