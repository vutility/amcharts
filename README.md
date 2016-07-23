# amcharts

A Dart wrapper for the AmCharts JS library.

## Simple Usage Example

### Get Dependencies
   
    js: any
    amcharts:
      path: path/to/amcharts

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
    
      AppComponent();
    
      ngAfterViewInit() {
        var chart = new AmSerialChart();
        chart.dataProvider = chartData;
        chart.categoryField = "country";
    
        var graph = new AmGraph();
        graph.valueField = "visits";
        graph.type = "column";
    
        chart.addGraph(graph);
    
        chart.write(chartView.nativeElement);
      }
    }
