import 'package:flutter/material.dart';

class contacts extends StatelessWidget {
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
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 35),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "MGA CONTACTS \nSA ORAS NG \nPANDEMIYA",
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
                      SizedBox(
                        height: 24,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Card(
                              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("(02) 894-COVID or (02)894-26843 "),
                                subtitle: Text("Open to all Callers nationwide"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("1555"),
                                subtitle: Text("For PLDT, Smart, Sun, and TNT Subscribers"),
                              ),
                            ),
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
    );
  }
}
