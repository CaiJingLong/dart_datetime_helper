import 'package:datetime_helper/datetime_helper.dart';

void main() {
  var dateTime = DateHelper.getStartTimeOfDay(DateTime.now());

  print(dateTime); //2018-09-14 00:00:00.000

  print(DateHelper.isSameDay(
      DateTime.parse("2018-01-01"), DateTime.parse("2018-01-02"))); // false

  print(DateHelper.isAm(DateTime(2018, 1, 1, 0, 20))); // true
  print(DateHelper.isAm(DateTime(2018, 1, 1, 13, 20))); // false
}
