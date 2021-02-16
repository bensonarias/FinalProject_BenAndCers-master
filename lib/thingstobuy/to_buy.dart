import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class To_buy extends StatefulWidget {
  @override
  _To_buyState createState() => _To_buyState();
}

class _To_buyState extends State<To_buy> {
  final db = Firestore.instance;
  String item = "";

  List<String> tempTitle =
      new List<String>(); //for storage of items that are checked
  List<String> itemList = new List<String>(); //list of all items in toBuy

//  List<String> subTitle = new List<String>();
//  List<bool> condition = new List<bool>();
//
//  var preDefinedItems = [
//    "Prescription  ",
//    "14 Days Supply of Non-Perishable Food",
//    "14 Days Supply of Water",
//    "Fluids with Electrolytes and Vitamins ",
//    "Thermometer",
//    "Hand Soap",
//    "Hand Sanitizer",
//    "Pet Food",
//    "Disinfectant",
//    "Feminine Hygiene Items",
//    "Disposable Gloves",
//    "Batteries",
//    "Face Mask",
//    "Water kettle/boiler",
//    "First aid Kit",
//    "Flashlight",
//    "Vitamins",
//    "Portable Radio"
//  ];
//
//  var preDefinedSubItems = [
//    "At least ",
//    "Canned goods)",
//  ];
//
//  @override
//  void initState() {
//    setState(() {
//      for (var x = 0; x < preDefinedItems.length; x++) {
//        title.add(preDefinedItems[x]);
////        subTitle.add(preDefinedSubItems[x]);
//        condition.add(false);
//      }
//    });
//  }

  void ItemChange(bool val, int index) {
    setState(() {
//      condition[index] = val;
    });
  }

  void showdialog(bool isUpdate, DocumentSnapshot ds) {
    GlobalKey<FormState> formkey = GlobalKey<FormState>();
    TextEditingController custom_controller = TextEditingController();
    var helper = "";

    showDialog(
        context: context,
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              title: isUpdate
                  ? Text("Update item")
                  : Text("Want to add another item on the checklist?"),
              content: Form(
                key: formkey,
                autovalidate: true,
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Add an item',
                    helperText: "$helper",
//                      suffixText: '$suffix',
                    helperStyle: TextStyle(color: Colors.red[700]),
                  ),
                  validator: (_val) {
                    if (_val.isEmpty) {
                      item = "";
                      return "Please input an Item";
                    } else {
                      item = _val;
                      return null;
                    }
                  },
                  onTap: () {
                    setState(() {
                      helper = " ";
                    });
                  },
//                onChanged: (_val) {
//                  item = _val;
//                },
                  controller: custom_controller,
                ),
              ),
              actions: <Widget>[
                MaterialButton(
                  elevation: 5.0,
                  child: Text("Submit"),
                  onPressed: () {
                    //will not do anything on the submit button if the field is empty
                    if (item == "") {
                      return null;
                    } else {
                      if (itemList.contains(item)) {
                        print("list detected");
                        setState(() {
                          helper = "Item already exist!";
                        });
                      } else {
                        if (isUpdate) {
                          db
                              .collection('toBuy')
                              .document(ds.documentID)
                              .updateData({
                            'items': item,
                            'time': DateTime.now(),
                            'checkbox': false
                          });
                          item = "";
                        } else {
                          db.collection('toBuy').add({
                            'items': item,
                            'time': DateTime.now(),
                            'checkbox': false
                          });
                          item = "";
                        }
                        Navigator.pop(context);
                      }
                    }
//                  Navigator.of(context).pop(custom_controller.text.toString());
                  },
                )
              ],
            );
          });
        });
  }

  void showOptionsDialog(DocumentSnapshot ds) {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            children: <Widget>[
              new MaterialButton(
//                padding: const EdgeInsets.only(right: 200.0),
                elevation: 5.0,
                child: Text("Delete",
                    style: TextStyle(
                      fontSize: 25.0,
                    )),
                onPressed: () async {
                  final collectionRef = Firestore.instance.collection('toBuy');
                  final futureQuery = collectionRef.getDocuments();

                  await futureQuery
                      .then((value) => value.documents.forEach((element) {
                            print(element.toString());
                            if (element['checkbox'] == true) {
                              //deletion of multiple items that are checked
                              element.reference.delete();
                            } else {
                              //deletion for one item only when long pressed
                              db
                                  .collection('toBuy')
                                  .document(ds.documentID)
                                  .delete();
                            }
                          }));
                  Navigator.pop(context);
                },
              ),
              new MaterialButton(
//                padding: const EdgeInsets.only(right: 200.0),
                elevation: 5.0,
                child: Text("Update",
                    style: TextStyle(
                      fontSize: 25.0,
                    )),
                onPressed: () {
                  Navigator.pop(context);
                  showdialog(true, ds);
                },
              ),
            ],
          );
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

    final collectionRef = Firestore.instance.collection('toBuy');
    final futureQuery = collectionRef.getDocuments();
    await futureQuery.then((value) => value.documents.forEach((element) {
          print(element.toString());
          //validation for the movein storck
          if (element['checkbox'] == true) {
            validator.add(true);
            itemsToMove.add(element['items']);
          }
        }));

    if (itemsToMove.isNotEmpty) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Move items in stock?"),
              content: Text(itemsToMove.join("\n")),
              actions: <Widget>[
                MaterialButton(
                  elevation: 5.0,
                  child: Text("Cancel"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                MaterialButton(
                  elevation: 5.0,
                  child: Text("OK"),
                  onPressed: () async {
                    if (validator.contains(true)) {
                      for (int x = 0; x < tempTitle.length; x++) {
                        db.collection('inStock').add({
                          'items': tempTitle[x],
                          'time': DateTime.now(),
                          'checkbox': false
                        });
                        await futureQuery
                            .then((value) => value.documents.forEach((element) {
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
    }else{
      errorMessage();
    }
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
              margin: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Things Needed",
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
                //original codes starts here
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
                              new StreamBuilder<QuerySnapshot>(
                                  stream: db
                                      .collection('toBuy')
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
                                            itemList.add(snapshot.data
                                                .documents[index]['items']);
                                            return Container(
                                              child: ListTile(
                                                  title: Text(ds['items']),
                                                  leading: ds['checkbox'] ==
                                                          false
                                                      ? Icon(Icons
                                                          .check_box_outline_blank)
                                                      : Icon(Icons.check_box),
                                                  onLongPress: () {
                                                    showOptionsDialog(ds);
                                                  },
                                                  onTap: () {
                                                    if (ds['checkbox'] ==
                                                        false) {
                                                      db
                                                          .collection('toBuy')
                                                          .document(
                                                              ds.documentID)
                                                          .updateData({
                                                        'checkbox': true
                                                      });
                                                    } else {
                                                      db
                                                          .collection('toBuy')
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
//                              new ListView.builder(
//                                  scrollDirection: Axis.vertical,
//                                  shrinkWrap: true,
//                                  itemCount: condition.length,
//                                  itemBuilder: (context, index) {
//                                    return CheckboxListTile(
//                                      value: condition[index],
//                                      title: new Text(title[index]),
////                                      subtitle: new Text(subTitle[index]),
//                                      controlAffinity:
//                                          ListTileControlAffinity.leading,
//                                      onChanged: (bool val) {
//                                        ItemChange(val, index);
//                                      },
//                                      activeColor: Colors.blue[800],
//                                      checkColor: Colors.white,
//                                    );
//                                  }
                                  )
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
//                original codes ends above
              },
              initialChildSize: 0.85,
              maxChildSize: 0.95,
              minChildSize: 0.85,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton.extended(
              heroTag: null,
              onPressed: () {
                showdialog(false, null);
//                showdialog(context).then((onValue) {
//                  condition.add(false);
//                  title.add('$onValue');
//                });
              },
              label: Text('Add item'),
              icon: Icon(Icons.add),
              backgroundColor: Colors.lightBlue,
            ),
            FloatingActionButton.extended(
              heroTag: null,
              onPressed: () {
                moveItem();
              },
              label: Text('Move in stock'),
              icon: Icon(Icons.check),
              backgroundColor: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }
}
