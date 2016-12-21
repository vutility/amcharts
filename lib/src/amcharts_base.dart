// Copyright (c) 2016, Monty Rasmussen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

@JS('AmCharts')
library amcharts.charts;

import 'package:js/js.dart';
import 'amcharts_support.dart';
import 'amcharts_options.dart';

@JS('AmAngularGauge')
class AmAngularGauge extends AmChart {
  external factory AmAngularGauge();

  external bool get adjustSize;
  external set adjustSize(bool v);

  external List<GaugeArrow> get arrows;
  external set arrows(List<GaugeArrow> v);

  external List<GaugeAxis> get axes;
  external set axes(List<GaugeAxis> v);

  external addAxis(GaugeAxis axis);
  external addArrow(GaugeArrow arrow);
}

@JS('AmBalloon')
class AmBalloon {
  external factory AmBalloon();

  external bool get drop;
  external set drop(bool v);

  external bool get fixedPosition;
  external set fixedPosition(bool v);
}

@JS('AmChart')
abstract class AmChart {
  external factory AmChart();

  external bool get addClassNames;
  external set addClassNames(bool v);

  external List<Label> get allLabels;
  external set allLabels(List<Label> v);

  external String get backgroundColor;
  external set backgroundColor(String v);

  external AmBalloon get balloon;
  external set balloon(AmBalloon v);

  external String get borderColor;
  external set borderColor(String v);

  external String get color;
  external set color(String v);

  external List get dataProvider;
  external set dataProvider(List v);

  external ExportOptions get export;
  external set export(ExportOptions v);

  external ResponsiveOptions get responsive;
  external set responsive(ResponsiveOptions v);

  external String get theme;
  external set theme(String v);

  external List<Title> get titles;
  external set titles(List<Title> v);

  external addListener(String type, Function handler);
  external clear();
  external invalidateSize();
  external removeListener(chart, String type, Function handler);
  external validateData();
  external validateNow(bool validateData, bool skipEvents);
  external write(container);
  external addLegend(AmLegend legend, [v]);
  external removeLegend();
  external addTitle(String text, [num size, String color, num alpha, bool bold]); //Guessed on item types for some of these as it wasn't indicated
}

@JS('AmCoordinateChart')
abstract class AmCoordinateChart extends AmChart {
  external factory AmCoordinateChart();

  external List<ValueAxis> get valueAxes;
  external set valueAxes(List<ValueAxis> v);

  external bool get gridAboveGraphs;
  external set gridAboveGraphs(bool v);

  external num get startDuration;
  external set startDuration(num v);

  external List<AmGraph> get graphs;
  external set graphs(List<AmGraph> v);

  external List<String> get colors;
  external set colors(List<String> v);

  external addValueAxis(ValueAxis axis);
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

  external num get bulletAlpha;
  external set bulletAlpha(num v);

  external num get bulletBorderAlpha;
  external set bulletBorderAlpha(num v);

  external String get bulletBorderColor;
  external set bulletBorderColor(String v);

  external num get bulletBorderThickness;
  external set bulletBorderThickness(num v);

  external String get bulletColor;
  external set bulletColor(String v);

  external String get bulletSizeField;
  external set bulletSizeField(String v);

  external num get bulletSize;
  external set bulletSize(num v);

  external String get colorField;
  external set colorField(String v);

  external num get fillAlphas;
  external set fillAlphas(num v);

  external String get fillColors;
  external set fillColors(String v);

  external String get fillColorsField;
  external set fillColorsField(String v);

  external num get hideBulletsCount;
  external set hideBulletsCount(num v);

  external num get lineAlpha;
  external set lineAlpha(num v);

  external String get lineColor;
  external set lineColor(String v);

  external String get lineColorField;
  external set lineColorField(String v);

  external num get lineThickness;
  external set lineThickness(num v);

  external String get title;
  external set title(String v);

  external String get type;
  external set type(String v);

  external bool get useLineColorForBulletBorder;
  external set useLineColorForBulletBorder(bool v);

  external String get valueField;
  external set valueField(String v);

  external ValueAxis get valueAxis;
  external set valueAxis(ValueAxis v);
}

@JS('AmLegend')
class AmLegend {
  external factory AmLegend();

  external bool get useGraphSettings;
  external set useGraphSettings(bool v);

  external num get marginLeft;
  external set marginLeft(num v);

  external num get marginRight;
  external set marginRight(num v);

  external num get marginTop;
  external set marginTop(num v);

  external num get marginBottom;
  external set marginBottom(num v);

  external String get position;
  external set position(String v);

  external String get labelText;
  external set labelText(String v);

  external String get color;
  external set color(String v);

  external List<Map> get data;
  external set data(List<Map> v);

  external String get valueText;
  external set valueText(String v);
}

@JS('AmPieChart')
class AmPieChart extends AmSlicedChart {
  external factory AmPieChart();

  external String get balloonText;
  external set balloonText(String v);

  //Item type is shown as Number/String https://docs.amcharts.com/3/javascriptcharts/AmPieChart#pullOutRadius
  external get pullOutRadius;
  external set pullOutRadius(v);

  external num get depth3D;
  external set depth3D(num v);

  external num get angle;
  external set angle(num v);

  external num get outlineAlpha;
  external set outlineAlpha(num v);
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

  external String get plotAreaBorderColor;
  external set plotAreaBorderColor(String v);

  //Seems like it can be a String or a List https://docs.amcharts.com/3/javascriptcharts/AmRectangularChart#plotAreaFillColors
  external get plotAreaFillColors;
  external set plotAreaFillColors(v);

  external num get plotAreaFillAlphas;
  external set plotAreaFillAlphas(num v);

  external bool get rotate;
  external set rotate(bool v);

  external num get columnWidth;
  external set columnWidth(num v);

  external addChartCursor(ChartCursor v);
}

@JS('AmSerialChart')
class AmSerialChart extends AmRectangularChart {
  external factory AmSerialChart();

  external CategoryAxis get categoryAxis;
  external set categoryAxis(CategoryAxis v);

  external String get categoryField;
  external set categoryField(String v);

  external String get dataDateFormat;
  external set dataDateFormat(String v);

  external bool get mouseWheelZoomEnabled;
  external set mouseWheelZoomEnabled(bool v);

  external addGraph(v);
  external addChartScrollbar(v);
  external zoomToCategoryValues(String start, String end);
  external zoomToDates(DateTime start, DateTime end);
  external zoomToIndexes(num start, num end);
}

@JS('AmSlicedChart')
abstract class AmSlicedChart extends AmChart {
  external factory AmSlicedChart();

  external String get titleField;
  external set titleField(String v);

  external String get valueField;
  external set valueField(String v);

  external String get classNameField;
  external set classNameField(String v);

  external String get colorField;
  external set colorField(String v);

  external String get labelColorField;
  external set labelColorField(String v);

  external num get marginBottom;
  external set marginBottom(num v);

  external num get marginLeft;
  external set marginLeft(num v);

  external num get marginRight;
  external set marginRight(num v);

  external num get marginTop;
  external set marginTop(num v);

  external bool get labelsEnabled;
  external set labelsEnabled(bool v);

  external num get alpha;
  external set alpha(num v);

  external String get innerRadius;
  external set innerRadius(String v);

  external String get pullOutRadius;
  external set pullOutRadius(String v);
}
