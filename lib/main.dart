import 'package:flutter/material.dart';
import 'package:cigarettesui/cigarette_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cigarette UI',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with TickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: new Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.drag_handle, color: Colors.black),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_basket, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView(
        padding: EdgeInsets.only(left: 20.0,right: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),

          Text("E-cigarrettes",
              style: TextStyle(
                fontSize: 42.0,
                fontWeight: FontWeight.bold,
              )),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Colors.black,
            isScrollable: true,
            labelPadding: EdgeInsets.only(right: 45.0),
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(
                child: Text("Popular",
                    style: TextStyle(
                      fontSize: 21.0,
                    )),
              ),
              Tab(
                child: Text("Featured",
                    style: TextStyle(
                      fontSize: 21.0,
                    )),
              ),
              Tab(
                child: Text("New",
                    style: TextStyle(
                      fontSize: 21.0,
                    )),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height+30.0 ,
            width: double.infinity,
            child: TabBarView(
              controller: new TabController(length: 1, vsync: this),
              children: <Widget>[
                CigarettePage(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
