@JS()
library make_chart;

import 'package:js/js.dart';
import 'amcharts_base.dart';
import 'amcharts_support.dart';

@JS()
@anonymous
class MakeChartOptions {
  external MakeChartOptions();

  external num get autoMarginOffsetRight;
  external set autoMarginOffset(num v);

  external CategoryAxis get categoryAxis;
  external set categoryAxis(CategoryAxis v);

  external String get categoryField;
  external set categoryField(String v);

  external AmChartScrollbar get chartScrollbar;
  external set chartScrollbar(AmChartScrollbar v);

  external List get dataProvider;
  external set dataProvider(List v);

  external List<AmGraph> get graphs;
  external set graphs(List<AmGraph> v);

  external AmLegend get legend;
  external set legend(AmLegend v);

  external num get marginRight;
  external set marginRight(num v);

  external num get marginTop;
  external set marginTop(num v);

  external bool get mouseWheelZoomEnabled;
  external set mouseWheelZoomEnabled(bool v);

  external String get theme;
  external set theme(String v);

  external List<Title> get titles;
  external set titles(List<Title> v);

  external String get type;
  external set type(String v);

  external List<ValueAxis> get valueAxes;
  external set valueAxes(List<ValueAxis> v);

}

