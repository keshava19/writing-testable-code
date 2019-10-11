import 'package:writing_testable_code/module_2/shared/invoice.dart';

abstract class BaseDatabase {
  Invoice getInvoice(int invoiceId);
}