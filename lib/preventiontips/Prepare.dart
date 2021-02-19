import 'package:flutter/material.dart';

class Prepare extends StatefulWidget {
  @override
  _PrepareState createState() => _PrepareState();
}

class _PrepareState extends State<Prepare> {
  List<String> title = new List<String>();
  List<String> subTitle = new List<String>();

  var preDefinedItems = [
    "Limitahan ang fae-to-face na mga gawain",
    "Masanay sa mga virtual na meeting",
    "Ugaliing mag-suot ng face mask",
    "Ugaliing mag-suot ng face mask",
    "Ugaliin ang pisikal na distansya sa mga tao",
    "Linisin ang mga hahawakan",
    "Palaging mag hugas ng kamay",
    "Itapon ng maayos ang mga basura",
    "Iwasan ang mga kainan na matao",
    "Huwag muna pumunta sa lugar na may mga positibo",
    "Huwag muna maghiraman ng mga gamit",
    "Iwasan ang mga gawain na walang sapat na ventilation",
  ];

  @override
  void initState() {
    setState(() {
      for (var x = 0; x < preDefinedItems.length; x++) {
        title.add(preDefinedItems[x]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Container(
        margin: EdgeInsets.only(top: 15),
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
//              padding: EdgeInsets.symmetric(vertical: 0),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 35),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "MGA DAPAT \nPAGHANDAAN \nBAGO ANG PANDEMYA",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
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
//                        SizedBox(
//                          height: 15,
//                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new ListView.builder(
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: title.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title: new Text(title[index],
                                        ),
                                      leading: Icon(Icons.adjust),
                                    );
                                  })
                            ],
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 14),
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
