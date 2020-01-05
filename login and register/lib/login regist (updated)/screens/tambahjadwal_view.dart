import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  build(context) {

    return MaterialApp(
      title: 'Tubes',
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(Icons.arrow_back, color: Colors.black,),
            title: Text('Tambah Jadwal', style: TextStyle(color: Colors.black),)
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pinkAccent,
          child: Text('Save'),
          onPressed: () {},
        ),
        body: Column(children: <Widget>[
          Container(
            width: 360, height: 96,
            decoration: BoxDecoration(color: Colors.white, shape: BoxShape.rectangle),
            child: Column(

                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 20, bottom: 8, left: 10, right: 10,),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Event",
                            prefixIcon: Icon(Icons.message),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(28))),
                      )),

                ]
            ),
          ),

        ],),


        //PERUBAHAN BARU
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
