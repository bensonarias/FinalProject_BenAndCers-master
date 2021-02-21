class Chart_Tcases{


  var cases;


  Chart_Tcases({this.cases});

  factory Chart_Tcases.fromJson(var json){

    return Chart_Tcases(
        cases: json['cases']
    );
  }


}