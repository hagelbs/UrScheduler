import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Home(),)
  );
}

class Home extends StatefulWidget {
  @override

  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  String _hari="";


void _pilihrutinitas(String value){
  setState(() {
    _hari=value;
  });
}
  bool senVal = false;
  bool selVal = false;
  bool rabVal = false;
  bool kamVal = false;
  bool jumVal = false;
  bool sabVal = false;
  bool mingVal = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.arrow_back, color: Colors.black,),
        title: new Text('Rutinitas', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),

      body:  Container(
        padding: EdgeInsets.all(10.0),
        child:  Column(
          children: <Widget>[
            new RadioListTile(
              value: "Setiap Hari",
              title: new Text("Setiap Hari"),
              activeColor: Colors.blue,
              groupValue: _hari,
              onChanged: (String value){
                _pilihrutinitas(value);
              }
            ),
            new RadioListTile(
                value: "Hari Kerja",
                title: new Text("Hari Kerja"),
                activeColor: Colors.blue,
                groupValue: _hari,
                onChanged: (String value){
                  _pilihrutinitas(value);
                }
            ),
            new RadioListTile(
                value: "Akhir Pekan",
                title: new Text("Akhir Pekan"),
                activeColor: Colors.blue,
                groupValue: _hari,
                onChanged: (String value){
                  _pilihrutinitas(value);
                }
            ),
            new RadioListTile(
                value: "Atur Sendiri",
                title: new Text("Atur Sendiri"),
                activeColor: Colors.blue,
                groupValue: _hari,
                onChanged: (String value){
                  _pilihrutinitas(value);
                }
            ),
            new Text("Senin"),
            Checkbox(
              value: senVal,
              onChanged: (bool value) {
                setState(() {
                  senVal = value;
                });
              },
            ),
            new Text("Selasa"),
            Checkbox(
              value: selVal,
              onChanged: (bool value) {
                setState(() {
                  selVal = value;
                });
              },
            ),
            new Text("Rabu"),
            Checkbox(
              value: rabVal,
              onChanged: (bool value) {
                setState(() {
                  rabVal = value;
                });
              },
            ),
            new Text("Kamis"),
            Checkbox(
              value: kamVal,
              onChanged: (bool value) {
                setState(() {
                  kamVal = value;
                });
              },
            ),
            new Text("Jumat"),
            Checkbox(
              value: jumVal,
              onChanged: (bool value) {
                setState(() {
                  jumVal = value;
                });
              },
            ),
            new Text("Sabtu"),
            Checkbox(
              value: sabVal,
              onChanged: (bool value) {
                setState(() {
                  sabVal = value;
                });
              },
            ),
            new Text("Minggu"),
            Checkbox(
              value: mingVal,
              onChanged: (bool value) {
                setState(() {
                  mingVal = value;
                });
              },
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
