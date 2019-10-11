import 'package:writing_testable_code/module_2/easy/base_date_time_wrapper.dart';

class DateTimeWrapper implements BaseDateTimeWrapper {
  @override
  DateTime getNow() {
    return DateTime.now();
  }
}
