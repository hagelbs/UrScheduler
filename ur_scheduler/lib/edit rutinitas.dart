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

class _HomeState extends State {
  String _tp="";

  void _pilihtp(String value){
    setState(() {
      _tp=value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.arrow_back, color: Colors.black,),
        title: new Text('Edit Rutinitas', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),

      body:  Container(
        padding: EdgeInsets.all(30.0),
        child:  Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  hintText: "Nama ",
                  border: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(10.0)
                  )
              ),
            ),
            ListTile(
              title:  Text('Rutinitas',),
              leading: Icon(Icons.format_list_bulleted),
              subtitle: new Text('Hari Kerja'),
              onTap: () {
              },
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Pilih Waktu',),
            ),
            ListTile(
              leading: Icon(Icons.notifications_active),
              title: Text('Tambah Pengingat',),
            ),
            new RadioListTile(
              value: "Ya",
              title: new Text("Ya"),
              activeColor: Colors.blue,
              subtitle: new Text("Nada Dering 1"),
              groupValue: _tp,
              onChanged: (String value){
                _pilihtp(value);
              }
            ),
            new RadioListTile(
                value: "Tidak",
                title: new Text("Tidak"),
                activeColor: Colors.blue,
                groupValue: _tp,
                onChanged: (String value){
                  _pilihtp(value);
                }
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
