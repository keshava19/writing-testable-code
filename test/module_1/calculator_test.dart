import 'package:test/test.dart';
import 'package:writing_testable_code/module_1/easy/calculator.dart';

void main() {
  Calculator calculator;
  setUp(() {
    calculator = Calculator();
  });
  test('Get total should return total price', () {
    var result = calculator.getTotal(1.0, 2.0, 0.5);

    expect(result, 2.5);
  });
}
