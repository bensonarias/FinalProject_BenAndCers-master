import 'package:flutter/material.dart';

class Prepare extends StatefulWidget {
  @override
  _PrepareState createState() => _PrepareState();
}

class _PrepareState extends State<Prepare> {
  List<String> title = new List<String>();
  List<String> subTitle = new List<String>();

  var preDefinedItems = [
    "Limit Face-to-face activities",
    "Practice virtual meetings",
    "Wearing mask",
    "Face shields",
    "Practice social distancing",
    "Disinfect surfaces",
    "Wash Hands",
    "Proper Disposal of Waste",
    "Practice-Pre plated food service",
    "Avoid traveling to areas that has higher cases",
    "Avoid Sharing of Household items",
    "Avoid Sharing of Household items",
    "Avoiding activities with no proper ventilations",
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
    return Container(
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
            margin: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "To do if there \n is upcoming pandemic?",
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
                        height: 24,
                      ),
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
                                    title: new Text(title[index]),
                                    leading: Icon(Icons.announcement),
                                  );
                                })
                          ],
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 32),
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(243, 245, 248, 1),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40))),
              );
            },
            initialChildSize: 0.80,
            maxChildSize: 0.95,
            minChildSize: 0.80,
          ),
        ],
      ),
    );
  }
}
