
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.white,
              leading: Icon(Icons.arrow_back, color: Colors.black),
              title: Text("Rutinitas", style: TextStyle(color: Colors.black),)
          ),
          body: SafeArea(
              child : Center(

                child:RadioGroup(),

              )
          )
      ),
    );
  }
}

class RadioGroup extends StatefulWidget {
  @override
  RadioGroupWidget createState() => RadioGroupWidget();
}

class NumberList {
  String number;
  int index;
  NumberList({this.number, this.index});

}

class RadioGroupWidget extends State {

  // Default Radio Button Selected Item.
  String radioItemHolder = 'Setiap Hari';

  // Group Value for Radio Button.
  int id = 1;

  List<NumberList> nList = [
    NumberList(
      index: 1,
      number: "Setiap Hari",
    ),
    NumberList(
      index: 2,
      number: "Hari Kerja",
    ),
    NumberList(
      index: 3,
      number: "Akhir Pekan",
    ),
    NumberList(
      index: 4,
      number: "Atur Sendiri",
    ),
  ];

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: Container(
              height: 350.0,
              child: Column(
                children:
                nList.map((data) => RadioListTile(
                  title: Text("${data.number}"),
                  groupValue: id,
                  value: data.index,
                  onChanged: (val) {
                    setState(() {
                      radioItemHolder = data.number ;
                      id = data.index;
                    });
                  },
                )).toList(),

              ),
            )),

      ],
    );
  }
}

