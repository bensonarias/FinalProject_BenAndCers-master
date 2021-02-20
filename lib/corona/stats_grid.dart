import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'model/Tcases.dart';
import 'package:final_project/corona/data.dart' as globals;
import "package:intl/intl.dart";



class StatsGrid extends StatefulWidget {

  @override
  _StatsGridState createState() => _StatsGridState();
}

class _StatsGridState extends State<StatsGrid> {
  Future <Tcases> getJsonData() async{
    var response = await http.get(
      Uri.encodeFull(globals.link),
    );
    if(response.statusCode==200){
      var convertDataJson = jsonDecode(response.body);
      return Tcases.fromJson(convertDataJson);
    }else{
      throw Exception("Check your internet connection or try again");
    }
  }

  @override void initState() {
    // TODO: implement initState
    super.initState();
    this.getJsonData();
  }
  var condition=1;
  var condition2=1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        children: <Widget>[
          FutureBuilder(
              future: getJsonData(),
              builder:(BuildContext context,Snapshot){
                if(Snapshot.hasData){
                  ++condition;
                  if(condition%2!=0){
                    return CircularProgressIndicator();
                  }else {
                    var covid = Snapshot.data;
                    return Flexible(
                      child: Row(
                        children: <Widget>[
                          _buildStatCard('Total Cases',
                              "${new NumberFormat("###,000", "en_US").format(
                                  covid.cases)}", Colors.orange),
                          _buildStatCard('Deaths',
                              "${new NumberFormat("###,000", "en_US").format(
                                  covid.deaths)}", Colors.red),
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
          ),
          FutureBuilder(
              future: getJsonData(),
              builder:(BuildContext context,Snapshot){
                if(Snapshot.hasData){
                  var covid =Snapshot.data;
                  ++condition2;
                  if(condition2%2!=0){
                    return CircularProgressIndicator();
                  }else {
                    return Flexible(
                      child: Row(
                        children: <Widget>[
                          _buildStatCard('Recovered',
                              "${new NumberFormat("###,000", "en_US").format(
                                  covid.recovered)}", Colors.green),
                          _buildStatCard('Active',
                              "${new NumberFormat("###,000", "en_US").format(
                                  covid.actived)}", Colors.lightBlue),
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
          ),
//          Flexible(
//            child: Row(
//              children: <Widget>[
//                _buildStatCard('Total Cases', '1.81 M', Colors.orange),
//                _buildStatCard('Deaths', '105 K', Colors.red),
//              ],
//            ),
//          ),
//          Flexible(
//            child: Row(
//              children: <Widget>[
//                _buildStatCard('Recovered', '391 K', Colors.green),
//                _buildStatCard('Active', '1.31 M', Colors.lightBlue),
//              ],
//            ),
//          ),
        ],
      ),
    );
  }

  Expanded _buildStatCard(String title, String count, MaterialColor color) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              count,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

}
