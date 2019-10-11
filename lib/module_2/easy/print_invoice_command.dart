import 'package:writing_testable_code/module_2/easy/base_database.dart';
import 'package:writing_testable_code/module_2/easy/base_date_time_wrapper.dart';
import 'package:writing_testable_code/module_2/easy/base_printer.dart';

class PrintInvoiceCommand {
  PrintInvoiceCommand(this._database, this._printer, this._dateTime);

  final BaseDatabase _database;
  final BasePrinter _printer;
  final BaseDateTimeWrapper _dateTime;

  void execute(int invoiceId) {
    var invoice = _database.getInvoice(invoiceId);

    _printer.writeLine('Invoice ID: ${invoice.id}');

    _printer.writeLine('Total: ${invoice.total}');

    var dateTime = _dateTime.getNow();

    _printer.writeLine('Printed: $dateTime');
  }
}
