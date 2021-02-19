import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class instock extends StatefulWidget {
  @override
  _instockState createState() => _instockState();
}

class _instockState extends State<instock> {
  final db = Firestore.instance;
  String item;

  List<String> tempTitle =
  new List<String>(); //for storage of items that are checked
  List<String> itemList = new List<String>(); //list of all items in inStock

  @override
  void initState() {
    setState(() {
//      title.add("Lorem Lorem");
//      condition.add(false);
    });
  }

  void ItemChange(bool val, int index) {
    setState(() {
//      condition[index] = val;
    });
  }

  errorMessage() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Alert"),
            content: Text("There was no item checked on the list"),
            actions: <Widget>[
              MaterialButton(
                elevation: 5.0,
                child: Text("OK"),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  moveItem() async {
    List<bool> validator = new List<bool>();
    List<String> itemsToMove = new List<String>();

    final collectionRef = Firestore.instance.collection('inStock');
    final futureQuery = collectionRef.getDocuments();
    await futureQuery.then((value) =>
        value.documents.forEach((element) {
          print(element.toString());
          //validation for the movein storck
          if (element['checkbox'] == true) {
            validator.add(true);
            itemsToMove.add(element['items']);
          }
        }));

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Ubos na ang mga sumusunod?",
              style: TextStyle(fontSize: 20),
            ),
            content: Text(itemsToMove.join("\n")),
            actions: <Widget>[
              MaterialButton(
                elevation: 5.0,
                child: Text("Hindi pa"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              MaterialButton(
                elevation: 5.0,
                child: Text("Oo"),
                onPressed: () async {
                  //will only do the process when the list contains true
                  //meaning that the list of items have an items check
                  if (validator.contains(true)) {
                    for (int x = 0; x < tempTitle.length; x++) {
                      db.collection('toBuy').add({
                        'items': tempTitle[x],
                        'time': DateTime.now(),
                        'checkbox': false
                      });
                      await futureQuery
                          .then((value) =>
                          value.documents.forEach((element) {
                            print(element.toString());
                            if (element['items'] == tempTitle[x]) {
                              element.reference.delete();
                            }
                          }));
                    }
                    tempTitle.clear();
                  } else {
                    errorMessage();
                  }
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Container(
        margin: EdgeInsets.only(top: 15),
        height: MediaQuery
            .of(context)
            .size
            .height,
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
                        "MGA NABILI NA",
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
//                        SizedBox(
//                          height: 24,
//                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new StreamBuilder<QuerySnapshot>(
                                  stream: db
                                      .collection('inStock')
                                      .orderBy('time')
                                      .snapshots(),
                                  builder: (context, snapshot) {
                                    if (snapshot.hasData) {
                                      return ListView.builder(
                                          scrollDirection: Axis.vertical,
                                          shrinkWrap: true,
                                          itemCount:
                                          snapshot.data.documents.length,
                                          itemBuilder: (context, index) {
                                            DocumentSnapshot ds =
                                            snapshot.data.documents[index];
                                            for (int x = 0;
                                            x <
                                                snapshot
                                                    .data.documents.length;
                                            x++) {
                                              if (snapshot.data.documents[x]
                                              ['checkbox'] ==
                                                  true) {
                                                if (!tempTitle.contains(snapshot
                                                    .data
                                                    .documents[x]['items'])) {
                                                  tempTitle.add(snapshot.data
                                                      .documents[x]['items']);
                                                }
                                              } else {
                                                tempTitle.remove(snapshot.data
                                                    .documents[x]['items']);
                                              }
                                            }
                                            return Container(
                                              child: ListTile(
                                                  title: Text(ds['items']),
                                                  leading: ds['checkbox'] ==
                                                      false
                                                      ? Icon(Icons
                                                      .check_box_outline_blank)
                                                      : Icon(Icons.check_box),
                                                  onLongPress: () {
//                                            showOptionsDialog(ds);
                                                  },
                                                  onTap: () {
                                                    if (ds['checkbox'] ==
                                                        false) {
                                                      db
                                                          .collection('inStock')
                                                          .document(
                                                          ds.documentID)
                                                          .updateData({
                                                        'checkbox': true
                                                      });
                                                    } else {
                                                      db
                                                          .collection('inStock')
                                                          .document(
                                                          ds.documentID)
                                                          .updateData({
                                                        'checkbox': false
                                                      });
                                                    }
                                                  }),
                                            );
                                          });
                                    } else if (snapshot.hasError) {
                                      return CircularProgressIndicator();
                                    } else {
                                      return CircularProgressIndicator();
                                    }
                                  }
                              )
//
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
              initialChildSize: 0.85,
              maxChildSize: 0.95,
              minChildSize: 0.85,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
        FloatingActionButton.extended(
        heroTag: null,
          onPressed: () {
            moveItem();
          },
//              child: Icon(Icons.check),
          label: Text(
          'Tanggalin sa stock',
          style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12),
        ),
        icon: Icon(Icons.cancel),
        backgroundColor: Colors.red[500],
      ),
      ],
    ),)
    ,
    );
  }
}
