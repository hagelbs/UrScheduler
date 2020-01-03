import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schedule/awal.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
            children: <Widget>[
              new GestureDetector(
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (context) => Home());
                    Navigator.push(context, route);
                  },
                  child: Image(image: AssetImage("images/1.jpeg"),)
              )]
        ),


      ),
    );



  }
}
