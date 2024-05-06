String convertDateTimeToDMY(DateTime dateTime) {
  String result =
      '${dateTime.day.toString().padLeft(2, '0')}-${dateTime.month.toString().padLeft(2, '0')}-${dateTime.year}';

  if (dateTime.day == DateTime.now().day &&
      dateTime.month == DateTime.now().month &&
      dateTime.year == DateTime.now().year) {
    result = '$result (today)';
  }

  return result;
}
