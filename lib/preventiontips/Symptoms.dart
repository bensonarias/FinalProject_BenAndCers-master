import 'package:flutter/material.dart';

class Symptoms extends StatefulWidget {
  @override
  _SymptomsState createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Container(
        margin: EdgeInsets.only(top: 32),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 32, vertical: 10),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "MGA SINTOMAS",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            DraggableScrollableSheet(
              builder: (context, scrollControler) {
                return Container(
                  child: SingleChildScrollView(
                    controller: scrollControler,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.blue[200],
                                elevation: 10,
                                child: ListTile(
                                  title: Text("KARANIWANG MGA SINTOMAS:"),
                                  contentPadding: EdgeInsets.only(
                                      left: 15.0, top: 10.0, bottom: 10.0),
                                  subtitle: Text("1.	Lagnat"
                                      "\n2.	Tuyong lalamunan"
                                      "\n3.	Pagkapagod"
                                      ),
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.blue[200],
                                elevation: 10,
                                child: ListTile(
                                  title:
                                      Text("'DI PANGKARANIWANG MGA SINTOMAS:"),
                                  contentPadding: EdgeInsets.only(
                                      left: 15.0, top: 10.0, bottom: 10.0),
                                  subtitle: Text("1.	Pananakit ng kasu-kasuan"
                                      "\n2.	Pamamaga ng lalamunan"
                                      "\n3.	Pagtatae"
                                      "\n4.	Pagpula ng mga mata"
                                      "\n5.  Pananakit ng ulo"
                                      "\n6.	Pagkawala ng pang-lasa"
                                      "\n7.	Rashes sa balat at pagputla ng mga daliri"),
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                color: Colors.blue[200],
                                elevation: 10,
                                child: ListTile(
                                  title: Text("SERYOSONG MGA SINTOMAS:"),
                                  contentPadding: EdgeInsets.only(
                                      left: 15.0, top: 10.0, bottom: 10.0),
                                  subtitle: Text(
                                      "1.	Nahihirapan sa paghinga"
                                      "\n2.	Paninikip ng dibdib"
                                      "\n3.	Hindi makapag salita at makakilos"),
                                ),
                              ),
                            ],
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          margin: const EdgeInsets.all(0.0),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(243, 245, 248, 1),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30))),
                );
              },
              initialChildSize: 0.80,
              maxChildSize: 0.95,
              minChildSize: 0.80,
            ),
          ],
        ),
      ),
    );
  }
}
