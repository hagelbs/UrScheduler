import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'awal.dart';
import 'tambah_jadwal.dart';

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
          body: Card(

            child: Column(
                children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Column(
                      children: <Widget>[
                    Icon(Icons.edit, size: 30.0),
                    ]),
                    SizedBox(
                      width: 200.0,
                        child: Text('Ini Lokasi ngambil data yaaaaaaaaaaaaaaa',
                            maxLines: 15,
                            style: TextStyle(fontSize: 15.0),
                      )
                          ),
                    new Column(
                        children: <Widget>[
                          Icon(Icons.delete, size: 30.0),
                        ]),
                  ],
                ),

                new Center (

                      child: OutlineButton(

                        onPressed: (){
                          Route route =MaterialPageRoute(builder: (context) => Tambah());
                          Navigator.push(context, route);
                        },
                        child: Icon(Icons.add,
                          color: Colors.teal,
                          size: 40.0,
                        ),
                        borderSide: BorderSide(color: Colors.lightBlueAccent),


                      )
                  ),
                ]),
          ),
        ),
        );

  }
}