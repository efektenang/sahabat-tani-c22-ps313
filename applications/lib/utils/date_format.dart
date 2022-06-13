import 'package:intl/intl.dart';

String dateFormat(DateTime dateTime) {
  return DateFormat('EEE, dd MMMM yyyy').format(dateTime);
}

String dateFormatToServer(DateTime dateTime) {
  return DateFormat('dd MMMM yyyy').format(dateTime);
}
