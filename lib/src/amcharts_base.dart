// Copyright (c) 2016, Monty Rasmussen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

@JS('AmCharts')
library amcharts.charts;

import 'package:js/js.dart';
import 'amcharts_support.dart';

@JS('AmChart')
abstract class AmChart {
  external factory AmChart();

  external List get dataProvider;
  external set dataProvider(List v);

  external write(v);
}

@JS('AmSerialChart')
class AmSerialChart extends AmChart {
  external factory AmSerialChart();

  external num get angle;
  external set angle(num v);

  external CategoryAxis get categoryAxis;
  external set categoryAxis(CategoryAxis v);

  external String get categoryField;
  external set categoryField(String v);

  external num get depth3D;
  external set depth3D(num v);

  external String get marginRight;
  external set marginRight(String v);

  external String get marginLeft;
  external set marginLeft(String v);

  external addGraph(v);
  external addChartScrollbar(v);
}

@JS('AmGraph')
class AmGraph {
  external factory AmGraph();

  external String get id;
  external set id(String v);

  external String get balloonText;
  external set balloonText(String v);

  external String get bullet;
  external set bullet(String v);

  external num get fillAlphas;
  external set fillAlphas(num v);

  external String get lineColor;
  external set lineColor(String v);

  external String get title;
  external set title(String v);

  external String get type;
  external set type(String v);

  external String get valueField;
  external set valueField(String v);
}

@JS('AmLegend')
class AmLegend {
  external factory AmLegend();

  external bool get useGraphSettings;
  external set useGraphSettings(bool v);
}

@JS('AmChartScrollbar')
class AmChartScrollbar {
  external factory AmChartScrollbar();

  //accessibleLabel	String	Zoom chart using cursor arrows	Text which screen readers will read if user rolls-over or sets focus using tab key (this is possible only if tabIndex property of AmGraph is set to some number) on the grips or draggable part of a scrollbar. Text is added as aria-label tag. Note - not all screen readers and browsers support this. Note, you should set tabIndex to some number in order it would be possible to zoom chart using cursor keys.
  external String get accessibleLabel;
  external set accessibleLabel(String v);

  //autoGridCount	Boolean	false	Specifies whether number of gridCount is specified automatically, according to the axis size.
  external bool get autoGridCount;
  external set autoGridCount(bool v);

  //backgroundAlpha	Number	1	Background opacity.
  external num get backgroundAlpha;
  external set backgroundAlpha(num v);

  //backgroundColor	Color	#D4D4D4	Background color of the scrollbar.
  external String get backgroundColor;
  external set backgroundColor(String v);

  //categoryAxis	CategoryAxis		Read-only. Category axis of the scrollbar.
  //color	Color	#FFFFFF	Text color.
  external String get color;
  external set color(String v);

  //dragCursorDown	String	cursor: cursor: grab; cursor:-moz-grabbing; cursor:-webkit-grabbing;	Mouse cursor displayed when clicked on selected part of a scrollbar.
  external String get dragCursorDown;
  external set dragCursorDown(String v);

  //dragCursorHover	String	cursor: cursor: grab; cursor:-moz-grab; cursor:-webkit-grab;	Mouse cursor displayed when hovering over selected part of a scrollbar.
  external String get dragCursorHover;
  external set dragCursorHover(String v);

  //dragIcon	String	dragIconRoundBig	File name of scrollbar drag (resize grip) icon. You can find a set of icons in amcharts/images folder - you can choose from these: dragIconRectBig, dragIconRectBigBlack, dragIconRectSmall, dragIconRectSmallBlack, dragIconRoundBig, dragIconRoundBigBlack, dragIconRoundSmall, dragIconRoundSmallBlack. You can also use your own custom icons. Don't forget to change dragIconWidth and dragIconHeight if you change icons.
  external String get dragIcon;
  external set dragIcon(String v);

  //dragIconHeight	Number	35	Height of resize grip image. Note, you should also update the image in amcharts/images folder if you don't want it to be distorted because of resizing.
  external num get dragIconHeight;
  external set dragIconHeight(num v);

  //dragIconWidth	Number	35	Width of resize grip image. Note, you should also update the image in amcharts/images folder if you don't want it to be distorted because of resizing.
  external num get dragIconWidth;
  external set dragIconWidth(num v);

  //enabled	Boolean	true	Specifies if scrollbar is enabled. You can hide/show scrollbar using this property without actually removing it.
  external bool get enabled;
  external set enabled(bool v);

  //graph	AmGraph		Specifies which graph will be displayed in the scrollbar. Only Serial chart's category scrollbar can display a graph.
  external AmGraph get graph;
  external set graph(AmGraph v);

  //graphFillAlpha	Number	1	Graph fill opacity. Value range is 0 - 1.
  external num get graphFillAlpha;
  external set graphFillAlpha(num v);

  //graphFillColor	Color	#BBBBBB	Graph fill color.
  external String get graphFillColor;
  external set graphFillColor(String v);

  //graphLineAlpha	Number	0	Graph line opacity. Value range is 0 - 1.
  external num get graphLineAlpha;
  external set graphLineAlpha(num v);

  //graphLineColor	Color	#BBBBBB	Graph line color.
  external String get graphLineColor;
  external set graphLineColor(String v);

  //graphType	String		by default the graph type is the same as the original graph's type, however in case of candlestick or ohlc you might want to show line graph in the scrollbar. Possible values are: line, column, step, smoothedLine, candlestick, ohlc
  external String get gridgraphTypeColor;
  external set graphType(String v);

  //gridAlpha	Number	0.7	Grid opacity. Value range is 0 - 1.
  external num get gridAlpha;
  external set gridAlpha(num v);

  //gridColor	Color	#FFFFFF	Grid color.
  external String get gridColor;
  external set gridColor(String v);

  //gridCount	Number	0	The number of grid lines.
  external num get gridCount;
  external set gridCount(num v);

  //hideResizeGrips	Boolean	false	Specifies whether resize grips are hidden when mouse is away from the scrollbar.
  external bool get hideResizeGrips;
  external set hideResizeGrips(bool v);

  //ignoreCustomColors	Boolean	false	If you have column type graph in your scrollbar, and this graph has custom colors for one or more columns in data provider, those columns will be colored with this custom color. However you might not want this in some cases. Set this property to true to use scrollbar's graph colors.
  external bool get ignoreCustomColors;
  external set ignoreCustomColors(bool v);

  //maximum	Number		Maximum value of ValueAxis of ChartScrollbar. Calculated automatically, if not set.
  external num get maximum;
  external set maximum(num v);

  //minimum	Number		Minimum value of ValueAxis of ChartScrollbar. Calculated automatically, if not set.
  external num get minimum;
  external set minimum(num v);

  //offset	Number	0	Distance from plot area to scrollbar, in pixels.
  external num get offset;
  external set offset(num v);

  //oppositeAxis	Boolean	true	By default, scrollbar is in the opsite side of plot area from the axis. If you set this property to false, scrollbar will be placed next to category/value axis. However it won't adjust it's position regarding axis labels, so you might need to use offset property to move scrollbar away from labels.
  external bool get oppositeAxis;
  external set oppositeAxis(bool v);

  //resizeEnabled	Boolean	true	Specifies whether scrollbar has a resize feature.
  external bool get resizeEnabled;
  external set resizeEnabled(bool v);

  //scrollbarHeight	Number	20	Height (width, if chart is rotated) of a scrollbar.
  external num get scrollbarHeight;
  external set scrollbarHeight(num v);

  //scrollDuration	Number	1	Duration of scrolling, when the user clicks on scrollbar's background, in seconds. Note, updateOnReleaseOnly should be set to false in order animation to happen.
  external num get scrollDuration;
  external set scrollDuration(num v);

  //selectedBackgroundAlpha	Number	1	Selected backround opacity.
  external num get selectedBackgroundAlpha;
  external set selectedBackgroundAlpha(num v);

  //selectedBackgroundColor	Color	#EFEFEF	Selected background color.
  external String get selectedBackgroundColor;
  external set selectedBackgroundColor(String v);

  //selectedGraphFillAlpha	Number	1	Selected graph's fill opacity. Value range is 0 - 1.
  external num get selectedGraphFillAlpha;
  external set selectedGraphFillAlpha(num v);

  //selectedGraphFillColor	Color	#888888	Selected graph's fill color.
  external String get selectedGraphFillColor;
  external set selectedGraphFillColor(String v);

  //selectedGraphLineAlpha	Number	0	Selected graph's line opacity. Value range is 0 - 1.
  external num get selectedGraphLineAlpha;
  external set selectedGraphLineAlpha(num v);

  //selectedGraphLineColor	Color	#888888	Selected graph's line color.
  external String get selectedGraphLineColor;
  external set selectedGraphLineColor(String v);

  //tabIndex	Number		In case you set it to some number, the chart will set focus on grips and draggable area of the scrollbar when user clicks tab key. When a focus is set, screen readers like NVDA Screen reader will read label which is set using accessibleLabel property of ChartScrollbar. When a focus is set user can zoom-in, zoom-out or pan the scrollbar using cursor keys. Note, not all browsers and readers support this.
  external num get tabIndex;
  external set tabIndex(num v);

  //updateOnReleaseOnly	Boolean	false	Specifies if the chart should be updated while dragging/resizing the scrollbar or only at the moment when user releases mouse button.
  external bool get updateOnReleaseOnly;
  external set updateOnReleaseOnly(bool v);
}
