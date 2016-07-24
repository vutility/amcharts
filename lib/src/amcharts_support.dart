@JS()
library amcharts.support;

import 'package:js/js.dart';

@JS('AxisBase')
abstract class AxisBase {
  external factory AxisBase();

  external bool get autoGridCount;
  external set autoGridCount(bool v);

  external String get axisColor ;
  external set axisColor(String v);

  external num get dashLength ;
  external set dashLength(num v);

  external num get gridCount ;
  external set gridCount(num v);

  external num get labelRotation ;
  external set labelRotation(num v);

  external bool get minorGridEnabled;
  external set minorGridEnabled(bool v);
}

@JS('CategoryAxis')
class CategoryAxis extends AxisBase {
  external factory CategoryAxis();

  external String get gridPosition ;
  external set gridPosition(String v);

  external num get labelRotation ;
  external set labelRotation(num v);

  external bool get parseDates;
  external set parseDates(bool v);
}

@JS('ChartCursor')
class ChartCursor {
  external factory ChartCursor();

  external String get limitToGraph ;
  external set limitToGraph(String v);

  external bool get oneBalloonOnly;
  external set oneBalloonOnly(bool v);
}

@JS('ExportOptions')
class ExportOptions {
  external factory ExportOptions();

  external bool get enabled;
  external set enabled(bool v);

  // "dateFormat": "YYYY-MM-DD HH:NN:SS"
  external String get dateFormat;
  external set dateFormat(String v);
}

@JS('GaugeAxis')
class GaugeAxis {
  external factory GaugeAxis();
}

@JS('Title')
class Title {
  external factory Title();

  external num get size ;
  external set size(num v);

  external String get text ;
  external set text(String v);
}

@JS('ValueAxis')
class ValueAxis extends AxisBase {
  external factory ValueAxis();

  external String get title ;
  external set title(String v);
}

