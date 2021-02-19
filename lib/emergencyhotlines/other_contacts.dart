import 'package:flutter/material.dart';

class other_contacts extends StatelessWidget {
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
                      "IBA PANG CONTACTS \nSA ORAS \nNG PANGANGAILANGAN",
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
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("National Emergency Hotline"),
                                subtitle: Text("911"),
                              ),
                            ),
                            Text(""),
                            Text(
                                "NATIONAL DISASTER RISK REDUCTION AND MANAGEMENT COUNCIL (NDRRMC) HOTLINES:"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Trunk Lines:"),
                                subtitle:
                                    Text("(02) 8911-5061 to 65 local 100"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Operations Center:"),
                                subtitle: Text("(02) 8911-1406, (02) 8912-2665"
                                    "\n(02) 8912-5668, (02) 8911-1873"),
                              ),
                            ),
                            Text(""),
                            Text("NDRRMC Hotlines for Luzon:"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text(
                                    "Office of Civil Defense - National Capital Region:"),
                                subtitle:
                                    Text("(02) 8421-1918, (02) 8913-2786"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title:
                                    Text("Office of Civil Defense - Region I:"),
                                subtitle: Text("(072) 607-6528"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text(
                                    "Office of Civil Defense - Region IV-A:"),
                                subtitle: Text("(049) 531-7266"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text(
                                    "Office of Civil Defense - Region IV-B:"),
                                subtitle: Text("(043) 723-4248"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text(
                                    "NDRRMC - Cordillera Administrative Region:"),
                                subtitle: Text("(074) 304-2256, (074) 619-0986"
                                    "\n(074) 444-5298, (074) 619-0986"),
                              ),
                            ),
                            Text(""),
                            Text(
                                "Office of the Civil Defense Regional Office Telephone Directory:"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Region I:"),
                                subtitle:
                                    Text("(072) 607-6528, (072) 700-4747"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Region II:"),
                                subtitle:
                                    Text("(078) 304-1630, (078) 304-1631"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Region III:"),
                                subtitle:
                                    Text("(045) 455-1526, (045) 455-0033"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Region IV-A:"),
                                subtitle: Text("(049) 834-4344, (049) 531-7266"
                                    "\nTF (049) 531-7279"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Region IV-B:"),
                                subtitle:
                                    Text("(043) 723-4248, (043) 702-9361"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Region V:"),
                                subtitle: Text("+63917-574-7880 (Globe)"
                                    "\n+63928-505-3861 (Smart)"
                                    "\n(052) 742-1176"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Region VI:"),
                                subtitle: Text("(033) 336-9353"
                                    "\n(033) 337-6671"
                                    "\n(033) 509-7319"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Region VII:"),
                                subtitle: Text("(032) 416-5025, (032) 253-6162"
                                    "\n(032) 253-8730 "
                                    "\n+63917-947-5666 (Globe) "
                                    "\n+63949-471-0009 (Smart)"),
                              ),
                            ),
                            Text(""),
                            Text(
                                "Department of Social Welfare and Development:"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Text Hotline:"),
                                subtitle: Text("0918-912-2813"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Trunk line:"),
                                subtitle: Text("(02) 8931-8101 to 07"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Disaster Response Unit:"),
                                subtitle:
                                    Text("(02) 8856-3665, (02) 8852-8081"),
                              ),
                            ),
                            Text(""),
                            Text("RED CROSS:"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotline:"),
                                subtitle: Text("143"
                                    "\n(02) 8527-8385 to 95"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("National Blood Center:"),
                                subtitle: Text("(02) 8527-0000 "),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Trunk line:"),
                                subtitle: Text("(02) 8790-2300"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Disaster Management Office:"),
                                subtitle: Text("134 (Staff)"
                                    "\n132 (Manager)"
                                    "\n133 (Radio Room)"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Emergency Response Unit:"),
                                subtitle: Text("(02) 8790-2300 local 604"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Telefax:"),
                                subtitle: Text("(02) 8527-0864"),
                              ),
                            ),
                            Text(""),
                            Text(
                                "DEPARTMENT OF INTERIOR AND LOCAL GOVERNMENT (DILG):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Trunk line:"),
                                subtitle: Text("(02) 8876 3454"),
                              ),
                            ),
                            Text(""),
                            Text("Philippine National Police (PNP):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Emergency Hotline:"),
                                subtitle: Text("117, (02) 8722-0650"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Text hotline:"),
                                subtitle: Text("0917-847-5757"),
                              ),
                            ),
                            Text(""),
                            Text("Bureau of Fire Protection (BFP):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Direct line:"),
                                subtitle:
                                    Text("(02) 8426-0219, (02) 8426-0246"),
                              ),
                            ),
                            Text(""),
                            Text("Philippine Coast Guard:"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotlines:"),
                                subtitle: Text("(02) 8527-8481 to 89"
                                    "\n(02) 8527-3877"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Telefax:"),
                                subtitle: Text("(02) 8527-8482 local 6291"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Text hotline:"),
                                subtitle: Text("0917-PCG-DOTC (0917-724-3682)"
                                    "\n0918-967-4697"),
                              ),
                            ),
                            Text(""),
                            Text("METRO MANILA DEVELOPMENT AUTHORITY (MMDA):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotlines:"),
                                subtitle: Text("136"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Trunk line::"),
                                subtitle: Text("(02) 8882-4151 to 77"
                                    "\nlocal 337 (Rescue)"
                                    "\nlocal 1096 (Metrobase)"
                                    "\nlocal 1135 Road Safety)"
                                    "\nlocal 1168 (Public Safety)"
                                    "\nlocal 1169 (Road Emergency)"
                                    "\nlocal 1162/ 1163 (Flood Control)"
                                    "\nlocal 1070 (Anti-Jaywalking)"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Viber:"),
                                subtitle: Text("0939-922-7161"),
                              ),
                            ),
                            Text(""),
                            Text("DEPARTMENT OF TRANSPORTATION (DOTr):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("DOTr Action Center Hotline:"),
                                subtitle: Text("7890"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Trunk line:"),
                                subtitle: Text("(02) 8790-8300"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Telefax:"),
                                subtitle: Text("(02) 8726-4925"),
                              ),
                            ),
                            Text(""),
                            Text(
                                "Civil Aviation Authority of the Philippines (CAAP):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Operations Center:"),
                                subtitle:
                                    Text("(02) 7944-2030, (02) 7944-2031"),
                              ),
                            ),
                            Text(""),
                            Text(
                                "Manila International Airport Authority (MIAA):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Text hotline:"),
                                subtitle: Text("0917-839-6242 (TEXNAIA)"
                                    "\n0918-918-6242"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Trunk lines:"),
                                subtitle:
                                    Text("(02) 8877-1109 (Terminals 1, 2 & 4)"
                                        "\n(02) 8877-7888 (Terminal 3)"),
                              ),
                            ),
                            Text(""),
                            Text(
                                "Clark International Airport Corporation (CIAC):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Trunk line:"),
                                subtitle: Text("(045) 499-1464"),
                              ),
                            ),
                            Text(""),
                            Text("Mactan-Cebu International Airport Authority (MCIAA):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Operations:"),
                                subtitle: Text("(032) 340-0228"),
                              ),
                            ),
                            Text(""),
                            Text("Civil Aeronautics Board (CAB):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Public Assistance Hotline:"),
                                subtitle: Text("165-66"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Trunk lines:"),
                                subtitle:
                                Text("(02) 8853-7259, (02) 8854-5996"),
                              ),
                            ),
                            Text(""),
                            Text("Maritime Industry Authority (MARINA):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Administrator Office:"),
                                subtitle: Text("(02) 8523-9078,(02) 8526-0971"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Call and Text hotline:"),
                                subtitle:
                                Text("0917-SUMBONG (7862664)"),
                              ),
                            ),
                            Text(""),
                            Text("Land Transportation Office (LTO):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("LTO Text hotline:"),
                                subtitle: Text("Text LTOHELP to 2600 (All networks)"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Trunk line:"),
                                subtitle:
                                Text("(02) 8922-9061 to 63"),
                              ),
                            ),
                            Text(""),
                            Text("Land Transportation Franchising and Regulatory Board (LTFRB):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("24/7 hotline:"),
                                subtitle: Text("1342"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Public Assistance and Complaints:"),
                                subtitle:
                                Text("(02) 8426-2515, (02) 8426-2534"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Text hotline:"),
                                subtitle:
                                Text("0921-448-7777"),
                              ),
                            ),
                            Text(""),
                            Text("PHILIPPINE ATMOSPHERIC, GEOPHYSICAL AND ASTRONOMICAL SERVICES ADMINISTRATION (PAGASA):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Trunk line:"),
                                subtitle: Text("(02) 8284-0800"),
                              ),
                            ),
                            Text(""),
                            Text("PHILIPPINE INSTITUTE OF VOLCANOLOGY AND SEISMOLOGY (PHIVOLCS):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Trunk line:"),
                                subtitle: Text("(02) 8426-1468 to 79"),
                              ),
                            ),
                            Text(""),
                            Text("DEPARTMENT OF PUBLIC WORKS AND HIGHWAYS (DPWH):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotline:"),
                                subtitle: Text("165-02"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Trunk line:"),
                                subtitle: Text("(02) 5304-3000"),
                              ),
                            ),
                            Text(""),
                            Text("North Luzon Expressway (NLEX):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("NLEX-SCTEX Hotline:"),
                                subtitle: Text("1-35000"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Trunk line:"),
                                subtitle: Text("(02) 8580-8900"),
                              ),
                            ),
                            Text(""),
                            Text("Subic-Clark-Tarlac Expressway (SCTEX):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("NLEX-SCTEX Hotline:"),
                                subtitle: Text("1-35000"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Emergency Number:"),
                                subtitle: Text("0920-96-SCTEX (72839)"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Trunk lines:"),
                                subtitle: Text("(02) 8362-2246, (02) 8362-9997"),
                              ),
                            ),
                            Text(""),
                            Text("Skyway System:"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Office Hotline:"),
                                subtitle: Text("(02) 88-SKYWAY (75-9929)"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("SMC Tollways Hotline:"),
                                subtitle: Text("(02) 5318-TOLL (8655)"),
                              ),
                            ),
                            Text(""),
                            Text("South Luzon Expressway (SLEX):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotlines:"),
                                subtitle: Text("(02) 5318-8655"
                                    "\n0999-886-0893 (Smart)"
                                    "\n0917-539-8762 (Globe)"
                                    "\n0932-854-6980 (Sun Cellular)"),
                              ),
                            ),
                            Text(""),
                            Text("CAVITEX:"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotline:"),
                                subtitle: Text("(02) 165-8888"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Trunk lines::"),
                                subtitle: Text("(02) 8683-8001, (02) 8683-8002"),
                              ),
                            ),
                            Text(""),
                            Text("Southern Tagalog Arterial Road (STAR Tollway):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotlines:"),
                                subtitle: Text("(43) 756- 7870, (43) 757-2277"),
                              ),
                            ),
                            Text(""),
                            Text("Philippine National Railways (PNR):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotlines:"),
                                subtitle: Text("(02) 5319-0041, (02) 5319-0169"),
                              ),
                            ),
                            Text(""),
                            Text("Light Rail Transit Authority (LRTA):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotline:"),
                                subtitle: Text("(02) 8647-3479 to 91"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Line 2 Hotlines:"),
                                subtitle: Text("(02) 8647-3452"
                                    "\n(02) 8647-3491 local 29846/ 29854"),
                              ),
                            ),
                            Text(""),
                            Text("Metro Rail Transit (DOTr-MRT3):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotline:"),
                                subtitle: Text("(02) 8929-5347 local 2810"),
                              ),
                            ),
                            Text(""),
                            Text("Office for Transportation Security (OTS):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotline:"),
                                subtitle: Text("(02) 8853-5249"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Mobile Hotline:"),
                                subtitle: Text("0919-9999-OTS (687)"),
                              ),
                            ),
                            Text(""),
                            Text("Manila Traffic Hotline:"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotlines:"),
                                subtitle: Text("(02) 8527-3087 to 88"
                                    "\n(02) 8527-9860"),
                              ),
                            ),
                            Text(""),
                            Text("Las Piñas Traffic Hotline:"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotline:"),
                                subtitle: Text("(02) 8856-3132"),
                              ),
                            ),
                            Text(""),
                            Text("Mandaluyong Traffic Hotline:"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotlines:"),
                                subtitle: Text("(02) 8532-5347"
                                    "\n(02) 8532-5001 to 28 local 323/ 357"),
                              ),
                            ),
                            Text(""),
                            Text("Marikina Hotlines:"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Rescue 161:"),
                                subtitle: Text("161"
                                    "\n(02) 8646-2436 to 38"
                                    "\n(02) 8646-0427"
                                    "\n(02) 7586-7344"
                                    "\n0928-559-3341 (Smart)"
                                    "\n0917-584-2168 (Globe)"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Radio Room Tactical Operation Center:"),
                                subtitle: Text("(02) 8646-1631"
                                    "\n0927-968-4311"),
                              ),
                            ),
                            Text(""),
                            Text("Pasig Hotlines:"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Emergency/ Rescue Hotline:"),
                                subtitle: Text("(02)641-1907"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotline:"),
                                subtitle: Text("(02) 8643-0000"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Pasig Ka TEXT::"),
                                subtitle: Text("0908-899-3333"),
                              ),
                            ),
                            Text(""),
                            Text("Makati Hotline:"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Makati Public Safety Department (MAPSA hotlines):"),
                                subtitle: Text("(02) 8819-3270,(02) 8844-3146 "),
                              ),
                            ),
                            Text(""),
                            Text("Manila Water:"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotline:"),
                                subtitle: Text("1627"),
                              ),
                            ),
                            Text(""),
                            Text("Maynilad:"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotline:"),
                                subtitle: Text("1626"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Text Hotline:"),
                                subtitle: Text("0998-864-1446"),
                              ),
                            ),
                            Text(""),
                            Text("VIOLENCE AGAINST WOMEN AND CHILDREN (VAWC) HOTLINES:"),
                            Text(""),
                            Text("Department of Social Welfare and Development:"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotline:"),
                                subtitle: Text("(02) 8931-8101 to 07"),
                              ),
                            ),
                            Text(""),
                            Text("DSWD –NCR Ugnayan Pag-asa Crisis Intervention Center:"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotlines:"),
                                subtitle: Text("(02) 8734-8639, (02) 8734-8654"
                                    "\n(02) 8734-8626 to 277"),
                              ),
                            ),
                            Text(""),
                            Text("Philippine National Police (PNP):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotline:"),
                                subtitle: Text("(02) 8723-0401 to 20"),
                              ),
                            ),
                            Text(""),
                            Text("PNP-Women and Children Protection Center (WCPC):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotline:"),
                                subtitle: Text("(02) 3410-3213"),
                              ),
                            ),
                            Text(""),
                            Text("NBI-Violence Against Women and Children Desk (VAWCD):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotlines:"),
                                subtitle: Text("(02) 8523-8231 to 38"
                                    "\n(02) 8525-6028"),
                              ),
                            ),
                            Text(""),
                            Text("Philippine Commission on Women (PCW):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Hotlines:"),
                                subtitle: Text("(02) 8736-5249,(02) 8736-7712"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Fax Number:"),
                                subtitle: Text("(02) 8736-4449"),
                              ),
                            ),
                            Text(""),
                            Text("NATIONAL CENTER FOR MENTAL HEALTH (NCMH):"),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Crisis Hotline:"),
                                subtitle: Text("0917-899-USAP (8727),"
                                    "\n989-USAP (8727)"),
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 0.0),
                              child: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                leading: Icon(Icons.phone),
                                title: Text("Trunk line:"),
                                subtitle: Text("(02) 8531-9001 to 10 local 201"),
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
