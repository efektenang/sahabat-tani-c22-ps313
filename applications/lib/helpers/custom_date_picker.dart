import 'package:flutter/material.dart';

class CustomDatePicker {
  Future<DateTime?> showCustomDatePicker(
      {required BuildContext context,
      DateTime? initialDate,
      DateTime? minDate,
      DateTime? maxDate}) {
    return showDatePicker(
      context: context,
      initialDate: initialDate!,
      firstDate: minDate!,
      lastDate: maxDate!,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      confirmText: "OK",
      cancelText: "Cancel",
    );
  }
}
