import '../../pressure_unit.dart';
import 'pascal.dart';
import 'pound_per_square_inch.dart';
import 'pressure_value.dart';
import 'standardA_atmosphere.dart';
import 'torr.dart';

class Bar extends PressureValue {
  Bar(double pressure) : super(pressure);

  @override
  PressureValue to(PressureUnit unit) =>
      switch(unit) {
        PressureUnit.bar => Bar(value),
        PressureUnit.pascal => Pascal(value),
        PressureUnit.poundPerSquareInch => PoundPerSquareInch(value),
        PressureUnit.standardAtmosphere => StandardAtmosphere(value),
        PressureUnit.torr => Torr(value),
      };

  @override
  toString() => '${super.toString()} bar';
}