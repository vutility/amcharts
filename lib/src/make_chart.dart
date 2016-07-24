@JS()
library make_chart;

import 'package:js/js.dart';
import 'amcharts_base.dart';
import 'amcharts_support.dart';

@JS()
@anonymous
class MakeChartOptions {
  external factory MakeChartOptions({
    num autoMarginOffset,
    CategoryAxis categoryAxis,
    String categoryField,
    ChartCursor chartCursor,
    ChartScrollbarOptions chartScrollbar,
    List dataProvider,
    List<AmGraph> graphs,
    AmLegend legendAxis,
    num marginRight,
    num marginTop,
    bool mouseWheelZoomEnabled,
    String theme,
    List<Title> titles,
    String type,
    List<ValueAxis> valueAxes
  });

  external num get autoMarginOffset;
  external set autoMarginOffset(num v);

  external CategoryAxis get categoryAxis;
  external set categoryAxis(CategoryAxis v);

  external String get categoryField;
  external set categoryField(String v);

  external ChartCursor get chartCursor;
  external set chartCursor(ChartCursor v);

  external ChartScrollbarOptions get chartScrollbar;
  external set chartScrollbar(ChartScrollbarOptions v);

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

@JS()
@anonymous
class ChartScrollbarOptions {
  external ChartScrollbarOptions();

  external bool get autoGridCount;
  external set autoGridCount(bool v);

  external String get graph;
  external set graph(String v);

  external num get scrollbarHeight;
  external set scrollbarHeight(num v);
}
