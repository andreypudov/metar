import '../../time_unit.dart';
import 'century.dart';
import 'day.dart';
import 'decade.dart';
import 'hour.dart';
import 'micro_second.dart';
import 'milli_second.dart';
import 'minute.dart';
import 'month.dart';
import 'nano_second.dart';
import 'second.dart';
import 'week.dart';
import 'year.dart';

abstract class TimeValue {
  final double value;

  TimeValue(this.value);

  factory TimeValue.from(TimeUnit unit, double value) {
    return switch (unit) {
      TimeUnit.nanoSecond => NanoSecond(value),
      TimeUnit.microSecond => MicroSecond(value),
      TimeUnit.milliSecond => MilliSecond(value),
      TimeUnit.second => Second(value),
      TimeUnit.minute => Minute(value),
      TimeUnit.hour => Hour(value),
      TimeUnit.day => Day(value),
      TimeUnit.week => Week(value),
      TimeUnit.month => Month(value),
      TimeUnit.year => Year(value),
      TimeUnit.decade => Decade(value),
      TimeUnit.century => Century(value),
    };
  }

  TimeValue to(TimeUnit unit);

  @override
  toString() => value.toString();
}