import 'package:datetime_helper/datetime_helper.dart';
import 'package:test/test.dart';

void main() {
  test('getDayString', () {
    var dateTime = DateTime(2018, 1, 1);
    expect(DateHelper.getDayString(dateTime), "2018-01-01");
  });

  test('getStartTimeOfDay', () {
    var now = DateTime.now();
    var startDate = DateHelper.getStartTimeOfDay(now);
    expect("2018-09-14 00:00:00.000", startDate.toString());
  });

  test("isAm", () {
    //0:00 => 12:00PM
    //1:00 => 1:00AM
    //12:00 => 12:00AM
    //13:00 => 1:00PM
    for (int i = 0; i < 24; i++) {
      var dateTime = DateTime(2018, 1, 1, i, 0);
      if (i < 12) {
        print("hour = $i");
        expect(true, DateHelper.isAm(dateTime));
      } else {
        print("hour = $i");
        expect(false, DateHelper.isAm(dateTime));
      }
    }
  });

  test("isPm", () {
    //0:00 => 12:00PM
    //1:00 => 1:00AM
    //12:00 => 12:00AM
    //13:00 => 1:00PM
    for (int i = 0; i < 24; i++) {
      var dateTime = DateTime(2018, 1, 1, i, 0);
      if (i >= 12) {
        print("hour = $i");
        expect(true, DateHelper.isPm(dateTime));
      } else {
        print("hour = $i");
        expect(false, DateHelper.isPm(dateTime));
      }
    }
  });

  test("isToday", () {
    var now = DateTime.now();
    expect(DateHelper.isToday(now), true);

    var datetime = DateTime(now.year, now.month, now.day - 1);
    expect(DateHelper.isToday(datetime), false);

    datetime = DateTime(now.year, now.month, now.day + 1);
    expect(DateHelper.isToday(datetime), false);
  });

  test("isSameDay", () {
    var dateTime1 = DateTime(2018, 1, 1, 10);
    var dateTime2 = DateTime(2018, 1, 1, 1);
    expect(DateHelper.isSameDay(dateTime1, dateTime2), true);

    dateTime1 = DateTime.parse("2018-01-02");
    dateTime2 = DateTime.parse("2018-01-01");

    expect(DateHelper.isSameDay(dateTime1, dateTime2), false);
  });
}
