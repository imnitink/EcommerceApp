

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mytrainingapp/MyHomePage.dart';
import 'package:splashscreen/splashscreen.dart';


void main(){
  runApp(
      new MaterialApp(
        home: new MyApp(),
        //home: new NewHomePage(),
      ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:MyHomePage());
  }


}