# amcharts

A Dart wrapper for the AmCharts JS library.

## Installing
   
    js: any
    amcharts:
      path: path/to/amcharts

## Example 1

An example based on the AmCharts tutorial: [Your first chart with amCharts](https://www.amcharts.com/tutorials/your-first-chart-with-amcharts/)


### Create Data Class

**lib/interop/chart_data.dart**

    @JS()
    library chart_data;
    
    import "package:js/js.dart";
    
    @JS()
    @anonymous
    class CountryData {
      external factory CountryData({String country, int visits});
    
      external String get country;
      external set country(String v);
    
      external num get visits;
      external set visits(num v);
    }

### Create Chart

**lib/app_component.html**

    <div #chartView style="width: 640px; height: 400px;"></div>

**lib/app_component.dart**

    import 'package:angular2/core.dart';
    import 'package:amcharts/amcharts.dart';
    
    import 'interop/chart_data.dart';
    
    @Component(selector: 'my-app',
        templateUrl: 'app_component.html'
    )
    class AppComponent implements AfterViewInit {
    
      @ViewChild('chartView') ElementRef chartView;
    
      List<CountryData> chartData = [
        new CountryData(country: "USA", visits: 4252),
        new CountryData(country: "China", visits: 1882),
        new CountryData(country: "Japan", visits: 1809),
        new CountryData(country: "Germany", visits: 1322),
        new CountryData(country: "UK", visits: 1122),
        new CountryData(country: "France", visits: 1114),
        new CountryData(country: "India", visits: 984),
        new CountryData(country: "Spain", visits: 711),
        new CountryData(country: "Netherlands", visits: 665),
        new CountryData(country: "Russia", visits: 580),
        new CountryData(country: "South Korea", visits: 443),
        new CountryData(country: "Canada", visits: 441),
        new CountryData(country: "Brazil", visits: 395),
        new CountryData(country: "Italy", visits: 386),
        new CountryData(country: "Australia", visits: 384),
        new CountryData(country: "Taiwan", visits: 338),
        new CountryData(country: "Poland", visits: 328)
      ];
    
      ngAfterViewInit() {
        AmSerialChart chart = new AmSerialChart()
          ..dataProvider = chartData
          ..categoryField = "country"
          ..angle = 30
          ..depth3D = 15;
    
        AmGraph graph = new AmGraph()
          ..valueField = "visits"
          ..type = "line"
          ..fillAlphas = 0
          ..balloonText = "[[category]]: <b>[[value]]</b>"
          ..bullet = "round"
          ..lineColor = "#8d1cc6";
    
        CategoryAxis categoryAxis = chart.categoryAxis
          ..autoGridCount  = false
          ..gridCount = chartData.length
          ..gridPosition = "start"
          ..labelRotation = 90;
    
        chart.addGraph(graph);
    
        chart.write(chartView.nativeElement);
      }
    }

## Example 2

An example based on the AmCharts [Line Chart with Scroll and Zoom](https://www.amcharts.com/demos/line-chart-with-scroll-and-zoom/) example.

### Create Data Class

**lib/interop/chart_data.dart**

    @JS()
    @anonymous
    class VisitsData {
      external factory VisitsData({DateTime date, int visits});
    
      external DateTime get date;
      external set date(DateTime v);
    
      external num get visits;
      external set visits(num v);
    }

### Create Chart

**lib/app_component.html**

    <style>
      .lineChartWithZoom {
        width: 100%;
        height: 500px;
      }
    </style>
        
    <div #chartView class="lineChartWithZoom"></div>

**lib/app_component.dart**

    import 'dart:math';
    import "package:js/js.dart";
    
    import 'package:angular2/core.dart';
    import 'package:amcharts/amcharts.dart';
    
    import 'interop/chart_data.dart';
    
    @Component(selector: 'my-app',
        encapsulation: ViewEncapsulation.Native,
        templateUrl: 'app_component.html'
    )
    class AppComponent implements AfterViewInit {
    
      @ViewChild('chartView') ElementRef chartView;
    
      ngAfterViewInit() {
        AmBalloon balloon = new AmBalloon()..drop = true;
    
        AmSerialChart chart = new AmSerialChart()
          ..dataProvider = generateChartData()
          ..categoryField = "date"
          ..angle = 30
          ..depth3D = 15;
    
        chart.valueAxes.add(
          new ValueAxis()
            ..axisAlpha = 0.2
            ..dashLength = 1
            ..position = "left"
        );
    
        AmGraph graph = new AmGraph()
          ..balloonText = "[[value]]"
          ..bullet = "round"
          ..bulletBorderAlpha = 1
          ..bulletColor = "#FFFFFF"
          ..hideBulletsCount = 50
          ..title = "red line"
          ..valueField = "visits"
          ..useLineColorForBulletBorder = true
          ..balloon = balloon;
    
        chart.addGraph(graph);
    
        chart.categoryAxis
          ..parseDates = true
          ..axisColor = "#DADADA"
          ..dashLength = 1
          ..minorGridEnabled = true;
    
        chart.chartCursor = new ChartCursor()
          ..cursorPosition = "middle"
          ..limitToGraph = graph;
    
        chart.chartScrollbar = new ChartScrollbar()
          ..autoGridCount = true
          ..graph = graph
          ..scrollbarHeight = 40;
    
        chart.export = new ExportOptions()
          ..enabled = true
          ..dateFormat = "YYYY-MM-DD HH:NN:SS";
    
        chart
          ..categoryField = "date"
          ..mouseWheelZoomEnabled = true
          ..theme = "light"
          ..marginRight = 80
          ..autoMarginOffset = 20
          ..marginTop = 7;
    
        chart.addListener("drawn", allowInterop((_) {
          print('CHART DRAWN!');
        }));
    
        chart.write(chartView.nativeElement);
    
        chart.zoomToIndexes(750, 900);
      }
    
      List generateChartData() {
        Random r = new Random();
    
        List chartData = [];
        DateTime firstDate = new DateTime.now();
        firstDate = firstDate.subtract(new Duration(days: 5));
    
        for (var i = 0; i < 1000; i++) {
          DateTime newDate = firstDate.add(new Duration(days: i));
    
          int visits = (r.nextDouble() * (40 + i / 5)).round() + 20 + i;
    
          chartData.add(new VisitsData(date: newDate, visits: visits));
        }
    
        return chartData;
      }
    }

