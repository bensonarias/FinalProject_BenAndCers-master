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
                child: new CovidBarChart(),
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
          child: Row(
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              Text(
                'Covid-19 Updates',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ],
          )
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
                setState(() {
                  globals.link="https://disease.sh/v3/covid-19/countries/Philippines";
                  globals.chart_link="https://disease.sh/v3/covid-19/historical/Philippines?lastdays=all";

                });
              }else if(index == 1){
                setState(() {
                  globals.link="https://disease.sh/v3/covid-19/continents/asia?strict=true";
                    globals.chart_link="https://disease.sh/v3/covid-19/historical/Afghanistan%2C%20Armenia%2C%20Azerbaijan%2C%20Bahrain%2C%20Bangladesh%2C%20Bhutan%2C%20Brunei%2C%20Cambodia%2C%20China%2C%20Cyprus%2C%20Georgia%2C%20India%2C%20Indonesia%2C%20Iran%2C%20Iraq%2C%20Israel%2C%20Japan%2C%20Jordan%2C%20Kazakhstan%2C%20Kuwait%2C%20Kyrgyzstan%2C%20Laos%2C%20Lebanon%2C%20Malaysia%2C%20Maldives%2C%20Mongolia%2C%20Burma%20%2C%20Nepal%2C%20Oman%2C%20Pakistan%2C%20Philippines%2C%20Qatar%20%2C%20Saudi%20Arabia%2C%20Singapore%2C%20Sri%20Lanka%2C%20Syrian%20Arab%20Republic%20%2C%20Taiwan%2C%20Tajikistan%2C%20Thailand%2C%20Timor-Leste%2C%20Turkey%2C%20UAE%2C%20Uzbekistan%2CS.%20korea%2C%20Vietnam%2C%20Yemen?lastdays=220";
                });
              }else if(index == 2){
                setState(() {
                  globals.link="https://disease.sh/v3/covid-19/all";
                  globals.chart_link="https://disease.sh/v3/covid-19/historical/all?lastdays=220";
                });
              }
            },
          ),
        ),
      ),
    );
  }
}

