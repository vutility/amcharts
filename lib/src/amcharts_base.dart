// Copyright (c) 2016, Monty Rasmussen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

@JS('AmCharts')
library amcharts;

import 'package:js/js.dart';

@JS('AmSerialChart')
class AmSerialChart {
  external factory AmSerialChart();

  external List get dataProvider;
  external set dataProvider(List v);

  external String get categoryField ;
  external set categoryField (String v);

  external addGraph(v);
  external write(v);
}

@JS('AmGraph')
class AmGraph {
  external factory AmGraph();

  external String get valueField ;
  external set valueField (String v);

  external String get type  ;
  external set type  (String v);
}

