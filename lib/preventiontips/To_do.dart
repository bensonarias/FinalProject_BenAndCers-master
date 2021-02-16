import 'package:flutter/material.dart';

class To_do extends StatefulWidget {
  @override
  _To_doState createState() => _To_doState();
}

class _To_doState extends State<To_do> {
  List<String> title = new List<String>();
  List<String> subTitle = new List<String>();
  String subValueTitle;
  String subValueContent;

  var preDefinedItems = [
    "SELF-ISOLATE",
    "SEEK MEDICAL HELP IF NEEDED: ",
    "PRACTICE SELF-CARE",
    "PROTECT OTHERS FROM CONTRACTING VIRUS",
    "PRACTICE PROPER HYGIENE",
    "CARING FOR SOMEONE WHO IS SICK",
  ];

  var preDefinedSub = [
    "",
    "When to call a doctor or the emergency services?",
    "Ways to practice self-care?",
    "Ways to protect others from contracting virus?",
    "Ways to practice hand hygiene",
    "Ways to care someone in sick",
  ];

  var preDefinedCont = [
    "",
    "People whose symptoms get worse should call their doctor for advice. "
        "If the symptoms are severe, people should call the emergency services"
        "and let the operator know that they have COVID-19 symptoms."
        "\nEmergency symptoms include but are not limited to:"
        "\na.	difficulty breathing"
        "\nb.	persistent pain or pressure in the chest"
        "\nc.	a bluish tinge to the lips or face"
        "\nd.	sudden confusion or an inability to wake",
    "a.	drinking plenty of fluids to stay hydrated"
        "\nb.	eating a healthful diet to help the body fight the infection"
        "\nc.	getting plenty of rest to aid recovery"
        "\nd.	taking medications to ease a cough"
        "\ne.	using acetaminophen to lower a fever and alleviate aches and pain.",
    "a.	Avoid going out in public and isolate from other people inside the home. This means staying in a separate room and using a separate bathroom, if possible."
        "\nb.	Clean all frequently used surfaces in the isolation room every day using a disinfectant. Such surfaces may include tabletops, counters, doorknobs, and bathroom fixtures."
        "\nc.	Ensure that other people who live in the home disinfect these surfaces in other areas of the home."
        "\nd.	Cover all coughs and sneezes with a tissue and dispose of the tissue in a lined trash can. Double-bag any trash bags before disposing of them."
        "\ne.	Regularly wash the hands with soap and water for at least 20 seconds."
        "\nf.	Use an alcohol-based hand sanitizer, containing at least 60% alcohol, when soap and water are not available."
        "\ng.	Avoid touching the eyes, mouth, and nose, as this increases the risk of transferring the virus to other people or surfaces."
        "\nh.	Avoid sharing personal items, including crockery, utensils, towels, and bedding, with others."
        "\ni.	Wash all eating utensils thoroughly after use with soap and water or put them in the dishwasher."
        "\nj.	Wear a face mask if going to the hospital or traveling by ambulance. If face masks are unavailable, use a scarf or bandana instead.",
    "a.	when they are visibly dirty"
        "\nb.	before and after food preparation"
        "\nc.	before eating"
        "\nd.	after using the bathroom"
        "\ne.	after changing a diaper or helping a child who has used the potty or toilet"
        "\nf.	after touching an animal or their food or waste"
        "\ng.	after handling garbage"
        "\nh.	before touching the face"
        "\ni.	before inserting or removing contact lenses"
        "\nj.	after coughing, sneezing, or blowing the nose"
        "\nk.	before and after treating wounds"
        "\nl.	before and after taking care of someone who is sick"
        "\nWhen soap and water are unavailable, a person should use an alcohol-based hand sanitizer that contains at least 60% alcohol.",
    "a.	Monitor the person’s symptoms closely and ask them to provide regular updates on how they are feeling."
        "\nb.	Treat the symptoms. Where appropriate, provide acetaminophen to reduce a fever, and give cough medicine to alleviate a cough."
        "\nc.	Call a doctor if the person’s symptoms worsen. If breathing difficulties develop, call the emergency services."
        "\nd.	Ensure that the person they are caring for self-isolates in a separate room of the home and uses a separate bathroom, if possible."
        "\ne.	Ensure that they and the person they are caring for wear a face mask. If face masks are unavailable, a person can wear a bandana or wrap a scarf around their face."
        "\nf.	Wear disposable gloves when handling the person’s garbage or soiled laundry. Immediately dispose of the gloves after use."
        "\ng.	Wash the hands often with soap and water, especially after interacting with the person who is sick or touching anything they have touched."
        "\nh.	Disinfect frequently used surfaces throughout the home every day. Use separate cleaning cloths, sponges, and mops for isolation rooms to avoid spreading the virus to other areas of the home.",
  ];

  @override
  void initState() {
    setState(() {
      for (var x = 0; x < preDefinedItems.length; x++) {
        title.add(preDefinedItems[x]);
        subTitle.add(preDefinedSub[x]);
      }
    });
  }

  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(subValueTitle),
            content: Text(subValueContent),
            actions: <Widget>[
              MaterialButton(
                elevation: 5.0,
                child: Text("Close"),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
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
                      "To do if you are \n infected?",
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
                                    trailing: Icon(Icons.help),
                                    onTap: () {
                                      subValueTitle = preDefinedSub[index];
                                      subValueContent = preDefinedCont[index];
                                      createAlertDialog(context)
                                          .then((onValue) {
//                                        if (index == 0) {
//                                        }
                                      });
                                    },
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
