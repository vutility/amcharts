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



@JS()
@anonymous
class ResponsiveOptions {
  external factory ResponsiveOptions();

  external bool get enabled;
  external set enabled(bool v);

  external num get maxHeight;
  external set maxHeight(num v);

  external num get maxWidth;
  external set maxWidth(num v);

  external num get minHeight;
  external set minHeight(num v);

  external num get minWidth;
  external set minWidth(num v);
}

