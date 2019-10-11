import 'package:writing_testable_code/module_2/easy/base_database.dart';
import 'package:writing_testable_code/module_2/shared/invoice.dart';

class Database implements BaseDatabase {
  @override
  Invoice getInvoice(int invoiceId) {
    throw UnimplementedError();
  }
}
