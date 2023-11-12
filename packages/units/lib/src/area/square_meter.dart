import '../../area_unit.dart';
import 'acre.dart';
import 'area_value.dart';
import 'hectare.dart';
import 'square_foot.dart';
import 'square_inch.dart';
import 'square_kilometer.dart';
import 'square_mile.dart';
import 'square_yard.dart';

class SquareMeter extends AreaValue {
  SquareMeter(double area) : super(area);

  @override
  AreaValue to(AreaUnit unit) =>
      switch(unit) {
        AreaUnit.squareKilometer => SquareKilometer(value),
        AreaUnit.squareMeter => SquareMeter(value),
        AreaUnit.squareMile => SquareMile(value),
        AreaUnit.squareYard => SquareYard(value),
        AreaUnit.squareFoot => SquareFoot(value),
        AreaUnit.squareInch => SquareInch(value),
        AreaUnit.hectare => Hectare(value),
        AreaUnit.acre => Acre(value),
      };

  @override
  toString() => '${super.toString()} m²';
}