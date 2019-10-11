import 'package:test/test.dart';
import 'package:writing_testable_code/module_2/easy/print_invoice_command.dart';
import 'package:writing_testable_code/module_2/shared/invoice.dart';
import 'package:mockito/mockito.dart';

import 'mock_database.dart';
import 'mock_date_time.dart';
import 'mock_printer.dart';

void main() {
  PrintInvoiceCommand _command;
  MockDatabase _database;
  MockPrinter _printer;
  MockDateTime _dateTime;
  Invoice _invoice;

  final int invoiceId = 1;
  final double total = 1.23;
  final DateTime date = DateTime(2001, 2, 3);

  setUp(() {
    _invoice = Invoice()
      ..id = invoiceId
      ..total = total;

    _database = MockDatabase();
    _printer = MockPrinter();
    _dateTime = MockDateTime();

    when(_database.getInvoice(invoiceId)).thenReturn(_invoice);
    when(_dateTime.getNow()).thenReturn(date);
    _command = PrintInvoiceCommand(_database, _printer, _dateTime);
  });

  test('Execute should print invoice number', () {
    _command.execute(invoiceId);
    verify(_printer.writeLine('Invoice ID: 1')).called(1);
  });
}
