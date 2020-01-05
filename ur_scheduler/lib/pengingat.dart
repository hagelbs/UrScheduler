
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
              title: Text("Pengingat", style: TextStyle(color: Colors.black),)
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
      index: 9,
      number: "Tidak ada",
    ),
    NumberList(
      index: 1,
      number: "Nada Dering 1",
    ),
    NumberList(
      index: 2,
      number: "Nada Dering 2",
    ),
    NumberList(
      index: 3,
      number: "Nada Dering 3",
    ),
    NumberList(
      index: 4,
      number: "Nada Dering 4",
    ),
    NumberList(
      index: 5,
      number: "Nada Dering 5",
    ),
    NumberList(
      index: 6,
      number: "Nada Dering 6",
    ),
    NumberList(
      index: 7,
      number: "Nada Dering 7",
    ),
    NumberList(
      index: 8,
      number: "Nada Dering 8",
    ),
  ];

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        ListTile(
          title: Row(
            children: <Widget>[
              Expanded(child: RaisedButton(onPressed: () {},child: Text("Nada Dering Lokal"),color: Colors.blueAccent,textColor: Colors.white,)),
              Expanded(child: RaisedButton(onPressed: () {},child: Text("Nada Dering Eksternal"),color: Colors.white,textColor: Colors.black,)),
            ],
          ),
        ),
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

