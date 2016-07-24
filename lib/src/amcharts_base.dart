// Copyright (c) 2016, Monty Rasmussen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

@JS('AmCharts')
library amcharts.charts;

import 'package:js/js.dart';
import 'amcharts_support.dart';
import 'amcharts_options.dart';

@JS('AmBalloon')
class AmBalloon {
  external factory AmBalloon();

  external bool get drop;
  external set drop(bool v);
}

@JS('AmChart')
abstract class AmChart {
  external factory AmChart();

  external List get dataProvider;
  external set dataProvider(List v);

  external ExportOptions get export;
  external set export(ExportOptions v);

  external String get theme;
  external set theme(String v);

  external addListener(String type, Function callback);
  external write(v);
}

@JS('AmCoordinateChart')
abstract class AmCoordinateChart extends AmChart {
  external factory AmCoordinateChart();

  external List<ValueAxis> get valueAxes;
  external set valueAxes(List<ValueAxis> v);
}

@JS('AmRectangularChart')
abstract class AmRectangularChart extends AmCoordinateChart {
  external factory AmRectangularChart();

  external num get angle;
  external set angle(num v);

  external num get autoMarginOffset;
  external set autoMarginOffset(num v);

  external ChartCursor get chartCursor;
  external set chartCursor(ChartCursor v);

  external ChartScrollbar get chartScrollbar;
  external set chartScrollbar(ChartScrollbar v);

  external num get depth3D;
  external set depth3D(num v);

  external num get marginBottom;
  external set marginBottom(num v);

  external num get marginLeft;
  external set marginLeft(num v);

  external num get marginRight;
  external set marginRight(num v);

  external num get marginTop;
  external set marginTop(num v);
}

@JS('AmSerialChart')
class AmSerialChart extends AmRectangularChart {
  external factory AmSerialChart();

  external CategoryAxis get categoryAxis;
  external set categoryAxis(CategoryAxis v);

  external String get categoryField;
  external set categoryField(String v);

  external bool get mouseWheelZoomEnabled;
  external set mouseWheelZoomEnabled(bool v);

  external addGraph(v);
  external addChartScrollbar(v);
  external zoomToCategoryValues(String start, String end);
  external zoomToDates(DateTime start, DateTime end);
  external zoomToIndexes(num start, num end);
}

@JS('AmGraph')
class AmGraph {
  external factory AmGraph();

  external String get id;
  external set id(String v);

  external AmBalloon get balloon;
  external set balloon(AmBalloon v);

  external String get balloonText;
  external set balloonText(String v);

  external String get bullet;
  external set bullet(String v);

  external num get bulletBorderAlpha;
  external set bulletBorderAlpha(num v);

  external String get bulletColor;
  external set bulletColor(String v);

  external num get fillAlphas;
  external set fillAlphas(num v);

  external num get hideBulletsCount;
  external set hideBulletsCount(num v);

  external String get lineColor;
  external set lineColor(String v);

  external String get title;
  external set title(String v);

  external String get type;
  external set type(String v);

  external bool get useLineColorForBulletBorder;
  external set useLineColorForBulletBorder(bool v);

  external String get valueField;
  external set valueField(String v);
}

@JS('AmLegend')
class AmLegend {
  external factory AmLegend();

  external bool get useGraphSettings;
  external set useGraphSettings(bool v);
}
