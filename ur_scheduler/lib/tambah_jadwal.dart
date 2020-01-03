import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:schedule/main.dart';
import 'awal.dart';
//import 'edit_jadwal.dart';

class Jadwal extends StatefulWidget {
  @override
  _JadwalState createState() => _JadwalState();
}
class _JadwalState extends State<Jadwal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          leading: new IconButton(icon: new Icon(Icons.arrow_back, color: Colors.white), onPressed: (){
            Route route = MaterialPageRoute(builder: (context) => Home());
            Navigator.push(context, route);
          }),
          title: new Text("    Rutinitas ",
            style: TextStyle(color: Colors.white) ,

          ),
        ),
        body: Container(
          child: ListView(

              padding: EdgeInsets.zero,
              children: <Widget>[

                ListTile(
                  title: Text("+",
                    textAlign: TextAlign.center,

                  ),
                  onTap: () {
                    Route route = MaterialPageRoute(builder: (context) => MyApp());
                    Navigator.push(context, route);
                  },
                ),
                SizedBox(height: 30),
              ]

          ),

        ),

      ),
    );
  }
}