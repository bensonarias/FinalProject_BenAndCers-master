import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_project/preventiontips/Prepare.dart';
import 'package:final_project/preventiontips/To_do.dart';
import 'package:final_project/preventiontips/Symptoms.dart';
import 'package:final_project/thingstobuy/to_buy.dart';
import 'package:final_project/thingstobuy/in_stock.dart';
import 'package:final_project/emergencyhotlines/contacts_pandemic.dart';
import 'package:final_project/emergencyhotlines/other_contacts.dart';
import 'package:final_project/corona/choicesdashboard.dart';
import 'package:final_project/corona/data.dart';
import 'package:final_project/corona/stats_grid.dart';
import 'config/palette.dart';
import 'config/styles.dart';
import 'corona/covid_bar.dart';
import 'corona/stats_grid.dart';
import 'corona/data.dart' as globals;

class GridDashboard extends StatelessWidget {
  static BuildContext gridpasscontext;
  Items item1 = new Items(
    title: "MGA DAPAT BILHIN",
    img: "assets/image/maintobuy.png",
    subtitle: "",
    toch: () {
      var route = new MaterialPageRoute(
        builder: (BuildContext)=>
        new thingstobuy(),
      );
      Navigator.of(gridpasscontext).push(route);
    },
  );

  Items item2 = new Items(
    title: "TIPS SA PAG-IINGAT",
    img: "assets/image/mainprevention2.png",
    subtitle: "",
    toch: () {
      var route = new MaterialPageRoute(
        builder: (BuildContext)=>
        new preventiontips(),
      );
      Navigator.of(gridpasscontext).push(route);
    },
  );
  Items item3 = new Items(
    title: "AGARANG HOTLINES",
    img: "assets/image/help.png",
    subtitle: "",
    toch: () {
      var route = new MaterialPageRoute(
        builder: (BuildContext)=>
        new emergencyhotlines(),
      );
      Navigator.of(gridpasscontext).push(route);
    },
  );
  Items item4 = new Items(
    title: "COVID-19 UPDATES",
    subtitle: "(KAILANGAN NG INTERNET)",
    img: "assets/image/epidemic.png",
    toch:() {
      var route = new MaterialPageRoute(
        builder: (BuildContext)=>
        new newCovidUpdates(),
      );
      Navigator.of(gridpasscontext).push(route);
    },
  );

  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4];
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.blue[700],
                elevation: 10,
                child: InkWell(
                  onTap: data.toch,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          data.img,
                          width: 100,
                          fit: BoxFit.fitWidth,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          data.title,
                          style: GoogleFonts.marmelad(
                              textStyle: TextStyle(
                                  color: Colors.green[100],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700)),
                        ),
                        Text(
                          data.subtitle,
                          style: GoogleFonts.marmelad(
                              textStyle: TextStyle(
                                  color: Colors.green[100],
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400
                              )
                          ),
                        ),

                      ],
                    ),
                  ),
                )
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String img;
  GestureTapCallback toch;
  String subtitle;
  Items({this.title,this.img,this.toch,this.subtitle});
}
class thingstobuy extends StatefulWidget {
  @override
  _thingstobuyState createState() => _thingstobuyState();
}

class _thingstobuyState extends State<thingstobuy> {
  var screens = [
    To_buy(),
    instock(),
  ];
  int selected_tab=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected_tab,
        items: [
          BottomNavigationBarItem(
              icon: new Image.asset("assets/image/add.png",width: 50,height: 50,),
              label: 'DAPAT BILHIN'),
          BottomNavigationBarItem(
              icon: new Image.asset("assets/image/completed.png",width: 50,height: 50,),
              label: 'MGA NABILI'),
        ],
        onTap: (index){
          setState(() {
            selected_tab =index;
          });
        },
        showUnselectedLabels: true ,
        iconSize: 30,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[selected_tab],
    );

  }
}

class preventiontips extends StatefulWidget{
  @override
  _preventiontipsState createState() => new _preventiontipsState();
}

class _preventiontipsState extends State<preventiontips>{
  var screens = [
    Prepare(),
    To_do(),
    Symptoms()
  ];
  int selected_tab=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromRGBO(38, 81, 158, 1),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected_tab,
        items: [
          BottomNavigationBarItem(
              icon: new Image.asset("assets/image/PreventionIcon.png",width: 50,height: 50,),
              label: 'I-HANDA'),
          BottomNavigationBarItem(
              icon: new Image.asset("assets/image/Ifmerongcovid.png",width: 50,height: 50,),
              label: 'GAWIN'),
          BottomNavigationBarItem(
              icon: new Image.asset("assets/image/symptoms.png",width: 50,height: 50,),
              label: 'SINTOMAS'),
        ],
        onTap: (index){
          setState(() {
            selected_tab =index;
          });
        },
        showUnselectedLabels: true ,
        iconSize: 30,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[selected_tab],
    );

  }
}

class emergencyhotlines extends StatefulWidget {
  @override
  _emergencyhotlinesState createState() => _emergencyhotlinesState();
}

class _emergencyhotlinesState extends State<emergencyhotlines> {
  var screens = [
    contacts(),
    other_contacts(),
  ];
  int selected_tab=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromRGBO(38, 81, 158, 1),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selected_tab,
        items: [
          BottomNavigationBarItem(
              icon: new Image.asset("assets/image/phone.png",width: 50,height: 50,),
              label: 'PANDEMIYA'),
          BottomNavigationBarItem(
              icon: new Image.asset("assets/image/emergency-call.png",width: 50,height: 50,),
              label: 'IBA PANG CONTACTS'),
        ],
        onTap: (index){
          setState(() {
            selected_tab =index;
          });
        },
        showUnselectedLabels: true ,
        iconSize: 30,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: screens[selected_tab],
    );

  }
}

class covidUpdates extends StatefulWidget {
  @override
  _covidUpdatesState createState() => _covidUpdatesState();
}

class _covidUpdatesState extends State<covidUpdates> {
  @override
  Widget build(BuildContext context) {
    Corona_updates.gridpasscontext=context;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 60,
          ),
          Text(
            "COVID-19 UPDATES",
            style: GoogleFonts.openSans(
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 20,
          ),
          Corona_updates()
        ],
      ),
    );
  }
}

class newCovidUpdates extends StatefulWidget {
  @override
  _newCovidUpdatesState createState() => _newCovidUpdatesState();
}

class _newCovidUpdatesState extends State<newCovidUpdates> {
  @override void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      body: SafeArea(
        child: CustomScrollView(
          physics: ClampingScrollPhysics(),
          slivers: <Widget>[
            _buildHeader(),
            _buildRegionTabBar(),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              sliver: SliverToBoxAdapter(
                child: StatsGrid(),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.only(top: 20.0),
              sliver: SliverToBoxAdapter(
                child: CovidBarChart(covidCases: covidUSADailyNewCases),
              ),
            )
          ],
        ),
      ),
    );
  }

  SliverPadding _buildHeader() {
    return SliverPadding(
      padding: const EdgeInsets.all(20.0),
      sliver: SliverToBoxAdapter(
        child: Text(
          'Covid-19 Updates',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
  SliverToBoxAdapter _buildRegionTabBar() {
    return SliverToBoxAdapter(
      child: DefaultTabController(
        length: 3,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          height: 50.0,
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: TabBar(
            indicator: BubbleTabIndicator(
              tabBarIndicatorSize: TabBarIndicatorSize.tab,
              indicatorHeight: 40.0,
              indicatorColor: Colors.white,
            ),
            labelStyle: Styles.tabTextStyle,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            tabs: <Widget>[
              Text('Philippines'),
              Text('Asia'),
              Text('World')
            ],
            onTap: (index) {
              if(index == 0){
                body:Container();
                setState(() {
                  globals.link="https://disease.sh/v3/covid-19/countries/Philippines?yesterday=true&twoDaysAgo=true";
                });
              }else if(index == 1){
                setState(() {
                  globals.link="https://disease.sh/v3/covid-19/continents/asia?strict=true";
                });
              }else if(index == 2){
                setState(() {
                  globals.link="https://disease.sh/v3/covid-19/all";
                });
              }
            },
          ),
        ),
      ),
    );
  }
}

