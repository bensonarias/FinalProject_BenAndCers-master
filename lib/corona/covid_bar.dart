import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:charts_flutter/flutter.dart' as charts;
import 'dart:convert';
import "package:intl/intl.dart";
import 'package:final_project/corona/data.dart' as globals;
import 'model/covid_bar_chart.dart';

class CovidBarChart extends StatefulWidget {
  @override
  _CovidBarChartState createState() => _CovidBarChartState();
}

class _CovidBarChartState extends State<CovidBarChart> {
  var link1="https://disease.sh/v3/covid-19/historical/all?lastdays=220";
  var link2="https://disease.sh/v3/covid-19/historical/Philippines?lastdays=all";
  List<charts.Series<TimeSeriesSales, DateTime>> seriesList;
  Future <Chart_Tcases> getJsonData() async{
    var response = await http.get((globals.chart_link),
    );

    if(response.statusCode==200){
      var convertDataJson=null;
      if(globals.chart_link=="https://disease.sh/v3/covid-19/historical/all?lastdays=220"){

        convertDataJson = jsonDecode(response.body);
        return Chart_Tcases.fromJson(convertDataJson);
      }else if(globals.chart_link=="https://disease.sh/v3/covid-19/historical/Philippines?lastdays=all"){

        convertDataJson = jsonDecode(response.body)['timeline'];
        return Chart_Tcases.fromJson(convertDataJson);
      }else{
        convertDataJson = jsonDecode(response.body);
        return Chart_Tcases.fromJsonNew(convertDataJson);
      }

    }else{
        throw Exception("Check your internet connection or try again");

    }
  }
  generateData(days,days_val0,days_val1,days_val2,days_val3,days_val4,days_val5,days_val6) {

    var days0 = new DateTime(days.year, days.month- 6, days.day );

    var days1 = new DateTime(days.year, days.month- 5 , days.day);

    var days2 = new DateTime(days.year, days.month- 4 , days.day);

    var days3 = new DateTime(days.year, days.month- 3 , days.day);

    var days4 = new DateTime(days.year, days.month- 2 , days.day);

    var days5 = new DateTime(days.year, days.month- 1 , days.day);

    var days6 = new DateTime(days.year, days.month, days.day-1);



    var newlinesalesdata = [
      new TimeSeriesSales(days0, days_val0),
      new TimeSeriesSales(days1, days_val1),
      new TimeSeriesSales(days2, days_val2),
      new TimeSeriesSales(days3, days_val3),
      new TimeSeriesSales(days4, days_val4),
      new TimeSeriesSales(days5, days_val5),
      new TimeSeriesSales(days6, days_val6),
    ];

    seriesList.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
        id: 'LineGraph',
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: newlinesalesdata,
      ),
    );
  }
  var condition=1;
  @override void initState() {
    // TODO: implement initState
    super.initState();
    this.getJsonData();

    seriesList = List<charts.Series<TimeSeriesSales, DateTime>>();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20.0),
            alignment: Alignment.centerLeft,
            child: Text(
              'Cases Bar-Chart based on JOHNS HOPKINS University',
              style: const TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          FutureBuilder(
              future: getJsonData(),
              builder:(BuildContext context,Snapshot){
                if(Snapshot.hasData){
                  seriesList =null;
                  seriesList = List<charts.Series<TimeSeriesSales, DateTime>>();
                  ++condition;
                  if(condition%2!=0){
                    return CircularProgressIndicator();
                  }else {
                    if(globals.chart_link==link1||globals.chart_link==link2){
                      var covid = Snapshot.data;
                      DateTime now = new DateTime.now();
                      DateTime date = new DateTime(now.year, now.month, now.day);
                      var days0 = new DateTime(date.year, date.month - 6, date.day);

                      var formatter = new DateFormat('M/dd/yy');
                      String date0 = formatter.format(days0);

                      var days1 = new DateTime(
                          date.year, date.month - 5, date.day);
                      String date1 = formatter.format(days1);

                      var days2 = new DateTime(
                          date.year, date.month - 4, date.day);
                      String date2 = formatter.format(days2);

                      var days3 = new DateTime(
                          date.year, date.month - 3, date.day);
                      String date3 = formatter.format(days3);

                      var days4 = new DateTime(
                          date.year, date.month - 2, date.day);
                      String date4 = formatter.format(days4);

                      var days5 = new DateTime(
                          date.year, date.month-1, date.day );
                      String date5 = formatter.format(days5);

                      var days6 = new DateTime(date.year, date.month, date.day-1);
                      String date6 = formatter.format(days6);


                      generateData(
                          date,
                          covid.cases['$date0'],
                          covid.cases['$date1'],
                          covid.cases['$date2'],
                          covid.cases['$date3'],
                          covid.cases['$date4'],
                          covid.cases['$date5'],
                          covid.cases['$date6']);
                    }else{
                      DateTime now = new DateTime.now();
                      DateTime date = new DateTime(now.year, now.month, now.day);
                      var covid = Snapshot.data;
                      print(covid.data1);

                      generateData(
                          date,
                          covid.data1,
                          covid.data2,
                          covid.data3,
                          covid.data4,
                          covid.data5,
                          covid.data6,
                          covid.data7,);
                    }


                    return Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                              child: charts.TimeSeriesChart(
                                  seriesList,
                                  defaultRenderer: new charts
                                      .LineRendererConfig(
                                      includeArea: true, stacked: true),
                                  animate: true,
                                  domainAxis: new charts
                                      .EndPointsTimeAxisSpec(),
                                  animationDuration: Duration(seconds: 5),
                                  behaviors: [
                                    new charts.ChartTitle('Date',
                                        behaviorPosition: charts
                                            .BehaviorPosition.bottom,
                                        titleOutsideJustification: charts
                                            .OutsideJustification
                                            .middleDrawArea),
                                    new charts.ChartTitle('Data',
                                        behaviorPosition: charts
                                            .BehaviorPosition.start,
                                        titleOutsideJustification: charts
                                            .OutsideJustification
                                            .middleDrawArea),
                                  ]
                              ))
                        ],
                      ),
                    );
                  }
                }else if(Snapshot.hasError){
                  return Text(Snapshot.error.toString());
                }else{
                  return CircularProgressIndicator();
                }
              }
          )
        ],
      ),
    );
  }
}

class TimeSeriesSales {
  DateTime time;
  int sales;

  TimeSeriesSales(this.time, this.sales);
}