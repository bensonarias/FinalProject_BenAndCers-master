import "package:intl/intl.dart";
class Chart_Tcases {


  var cases;
  var data1;
  var data2;
  var data3;
  var data4;
  var data5;
  var data6;
  var data7;


  Chart_Tcases({this.cases});
  Chart_Tcases.fromChart({this.data1,this.data2,this.data3,this.data4,this.data5,this.data6,this.data7});


  factory Chart_Tcases.fromJson(var json){
    return Chart_Tcases(
        cases: json['cases']
    );
  }

  factory Chart_Tcases.fromJsonNew(var json){

    int output0=0;
    int output1=0;
    int output2=0;
    int output3=0;
    int output4=0;
    int output5=0;
    int output6=0;
    for(int i = 0; i<46;i++){
        for(int j=0;j<7;j++){
          DateTime now = new DateTime.now();
          DateTime date = new DateTime(now.year, now.month, now.day);
          var days0 = new DateTime(date.year, date.month -j, date.day-1);
          var formatter = new DateFormat('M/dd/yy');
          String date0 = formatter.format(days0);
//            print((date0));
//            print(json[i]['timeline']['cases']['$date0']);
          switch(j) {
            case 0: {  print('here at $i and $j'); output0 = (json[i]['timeline']['cases']['$date0']) + output0;    print(output0); }
            break;

            case 1: { print("here at $i and $j "); output1 = (json[i]['timeline']['cases']['$date0']) + output1 ; }
            break;

            case 2: { print("here at $i and $j ");output2 = (json[i]['timeline']['cases']['$date0']) + output2;}
            break;

            case 3: {  print("here at $i and $j ");output3 = (json[i]['timeline']['cases']['$date0']) + output3; }
            break;

            case 4: {  print("here at $i and $j ");output4 = (json[i]['timeline']['cases']['$date0'])+ output4; }
            break;

            case 5: {print("here at $i and $j "); output5 = (json[i]['timeline']['cases']['$date0']) + output5; }
            break;

            case 6: { print("here at $i and $j "); output6 = (json[i]['timeline']['cases']['$date0']) + output6;}

            break;


            default: { print("Invalid choice"); }
            break;
          }
        }
    }
    return Chart_Tcases.fromChart(
        data7: output0,
        data6: output1,
        data5: output2,
        data4: output3,
        data3: output4,
        data2: output5,
        data1: output6
    );
  }
}