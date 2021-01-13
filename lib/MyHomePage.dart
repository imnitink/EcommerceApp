import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytrainingapp/BottomNavigationBar.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Positioned(
                  top: 0.0,
                  child: Container(
                    height: 280,
                    child: Image(
                      color: Color.fromRGBO(4, 15, 79, 1),
                      colorBlendMode: BlendMode.color,
                      image: AssetImage('assets/MaskGroup.png'),
                    ),
                  ),
                ),
                Positioned(
                    left: 30.0,
                    top: 56.0,
                    height: 15,
                    width: 20,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    )),
                Positioned(
                    top: 57,
                    left: 65,
                    width: 67,
                    height: 25,
                    child: Text(
                      'BopTee',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    )),
                Positioned(
                    top: 57,
                    left: 295,
                    width: 13,
                    height: 15,
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    )),
                Positioned(
                    top: 99,
                    left: 30,
                    width: 250,
                    height: 35,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'What are you looking for Today?',
                        ),
                      ),
                    )),
                Positioned(
                    top: 99,
                    left: 295,
                    width: 35,
                    height: 35,
                    child: Container(
                      //color: Colors.white,
                      child: Icon(Icons.search),
                      decoration: BoxDecoration(color: Colors.white),
                    )),
                Container(
                  height: 500,
                  // card height
                  child: PageView.builder(
                    itemCount: 2,
                    controller: PageController(viewportFraction: 0.8),
                    onPageChanged: (int index) => setState(() => _index = index),
                    itemBuilder: (_, i) {
                      return Transform.scale(
                        scale: i == _index ? 1 : 0.9,
                        child:
                            Image(image: AssetImage('assets/Banner${i + 1}.png')),
                      );
                    },
                  ),
                ),
                Positioned(
                    top: 350,
                    left: 30,
//                  width: 35,
//                  height: 35,
                    child: Text(
                      'Our Top Most Brands',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                    )),
                Positioned(
                  top: 400,
                  left: 30,
                  child: Container(
                    //padding: EdgeInsets.only(top: 10, bottom: 5),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Card(
                            child: Image(width:150,image: AssetImage('assets/Puma.png'))),
                        Card(
                          child: Image(image: AssetImage('assets/Deisel.png')),
                        ),
                        Card(
                          child: Image(image: AssetImage('assets/Levis.png')),
                        ),Card(
                          child: Image(image: AssetImage('assets/H&M.png')),
                        )

                        ///add more as you wish
                      ],
                    ),
                  ),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top:25 ,right: 205),
                  child: Text(
                    'Categories',
                    textAlign: TextAlign.left,
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Card(
                          child: Image(image: AssetImage('assets/Stretch.png'))),
                      Card(
                        child: Image(image: AssetImage('assets/Style.png')),
                      ),
                      Card(
                        child: Image(image: AssetImage('assets/Stylish.png')),
                      ),Card(
                        child: Image(image: AssetImage('assets/Henley.png')),
                      )

                      ///add more as you wish
                    ],
                  ),
                )

              ],
            )


          ],
        ),
      ),
    );
  }
}
