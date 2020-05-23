import 'package:flutter/material.dart';

class CigaretteDetail extends StatelessWidget {
  final assetPath, cigarettePrice, title;

  CigaretteDetail({this.assetPath, this.cigarettePrice, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView(children: [

        Container(
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Icon(Icons.assignment, color: Colors.blue)
                ),
                Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Icon(Icons.assignment_turned_in, color: Colors.amber)
                ),
                Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Icon(Icons.assessment, color: Colors.purple)
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 52),
                    child: Hero(
                        tag: assetPath,
                        child: Image.asset(assetPath,
                            height: 300.0, width: 200.0, fit: BoxFit.contain)),
                ),
              ],
            ),
          ]),
        ),

        Container(//slider icons
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.only(left: 187),

                    child: Icon(Icons.adjust, color: Colors.white, size: 10.0)
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.only(left: 5),

                    child: Icon(Icons.panorama_fish_eye, color: Colors.white, size: 10.0)
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.only(left: 5),

                    child: Icon(Icons.panorama_fish_eye, color: Colors.white, size: 10.0)
                ),
              ],
            ),
          ]),
        ),

        SizedBox(height:20.0),

        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0)),
              color: Colors.white),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 10,right: 100,bottom: 20,top: 15),
                  child: Text(title,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                Container(
                  padding: EdgeInsets.only(right: 150),
                  child: Text(cigarettePrice,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 110,top: 20),
                        child: Icon(Icons.visibility, color: Colors.black),
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 110),
                          child: Text("3 ML")),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 40,top: 20),
                        child: Icon(Icons.battery_charging_full,
                            color: Colors.black),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 40),
                        child: Text("1110 MAN"),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 40,top: 20),
                        child: Icon(Icons.shopping_basket, color: Colors.black),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 40),
                        child: Text("80 G"),
                      ),
                    ],
                  ),
                ]),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(right: 100,top:25),
                      child: Text("Description",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 50,top: 10),
                      width: MediaQuery.of(context).size.width - 110.0,
                      child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque feugiat maximus magna et imperdiet. Donec.',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Varela',
                              fontSize: 16.0,
                              color: Color(0xFFB4B8B9))),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 240),
                  child: Center(child: Icon(Icons.star, color: Colors.black)),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 240),

                  child: Center(child: Icon(Icons.star, color: Colors.black)),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 240),

                  child:
                  Center(child: Icon(Icons.star_half, color: Colors.black)),
                ),
              ],
            ),
          ]),
        ),

        Container(
          padding: EdgeInsets.only(top: 20),
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0)),
              color: Colors.white),


          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [

            Column(
              children: <Widget>[
                Container(
                    height: 50.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.white,
                      border: Border.all(),
                    ),
                    child: Center(
                        child: Text(
                          'Add to cart',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ))),
              ],
            ),
            SizedBox(width: 30.0),
            Column(
              children: <Widget>[
                Container(
                    height: 50.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.white,
                      border: Border.all(),
                    ),
                    child: Center(
                        child: Text(
                          '— 1 + ',
                          style: TextStyle(
                              fontFamily: 'Varela',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ))),
              ],
            ),
          ]),
        ),
      ]),
    );
  }
}
