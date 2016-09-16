@JS()
library amcharts.options;

import 'package:js/js.dart';

@JS()
@anonymous
class ExportOptions {
  external factory ExportOptions();

  external bool get enabled;
  external set enabled(bool v);

  // "dateFormat": "YYYY-MM-DD HH:NN:SS"
  external String get dateFormat;
  external set dateFormat(String v);
}

