import 'package:flutter/material.dart';
import 'package:cigarettesui/detail_page.dart';

class CigarettePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 1,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 2.5,
                children: <Widget>[
                  _buildCard('NORD KIT', '\$4.90', 'graphics/2.png',
                      false, false, context),
                  _buildCard('TANCE', '\$5.99', 'graphics/2.png',
                      true, false, context),
                  _buildCard('NOVO 2 KIT', '\$7.99',
                      'graphics/2.png', false, true, context)
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String title, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CigaretteDetail(
                    assetPath: imgPath, cigarettePrice: price, title: title)));
          },
          child: Container(
            height: 150.0,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 2.0)
                ]
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: 140.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imgPath), fit: BoxFit.cover)
                  ),
                ),
                SizedBox(width: 20.0),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),

                          child: Center(
                              child:
                              Icon(Icons.star, color: Colors.black)),
                        ),
                        Container(
                          child: Center(
                              child:
                              Icon(Icons.star, color: Colors.black)),
                        ),
                        Container(
                          child: Center(
                              child:
                              Icon(Icons.star_half, color: Colors.black)),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.0),

                    Row(
                      children: <Widget>[
                        Container(
                          height: 40.0,
                          width: 50.0,
                          color: Colors.white,

                          child: Center(
                            child: Text(
                              price,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Quicksand',
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 40),
                          child: Center(
                              child:
                              Icon(Icons.assignment, color: Colors.purple)),
                        ),
                        Container(
                          child: Center(
                              child:
                              Icon(Icons.assignment_turned_in, color: Colors.amber)),
                        ),
                        Container(
                          child: Center(
                              child:
                              Icon(Icons.assessment, color: Colors.lightBlue)),
                        ),
                        Container(
                          child: Center(
                              child:
                              Icon(Icons.add, color: Colors.black)),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
