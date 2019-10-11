import 'package:writing_testable_code/module_2/hard/printer.dart';
import 'package:writing_testable_code/module_2/shared/database.dart';

class PrintInvoiceCommand {
  void execute (int invoiceId) {
    var database = Database();

    var invoice = database.getInvoice(invoiceId);

    Printer.writeLine('Invoice ID: ${invoice.id}');

    Printer.writeLine('Total: ${invoice.total}');

    var dateTime = DateTime.now();

    Printer.writeLine('Printed: $dateTime');
  }
}