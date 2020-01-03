import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'tambah_jadwal.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  CalendarController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();


  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: new Text("    Schedule",
            style: TextStyle(color: Colors.white) ,
          ),
          actions: <Widget>[

          ],

        ),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,

            children: <Widget>[

              /*UserAccountsDrawerHeader(
              accountName: new Text("Riza"),
              accountEmail: new Text("riza@gmail.com"),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: NetworkImage("https://code.byriza.com/lib/img/logo.png"),
              ),
            ),*/
              ListTile(
                title: Text('Scheduler',
                  style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                ),


              ),

              ListTile(
                leading: Icon(Icons.schedule),
                title: Text('Tambah Jadwal'),
                onTap: () {
                  Route route = MaterialPageRoute(builder: (context) => Jadwal());
                  Navigator.push(context, route);
                },
              ),
              ListTile(
                title: Text('Rutinitas'),
                leading: Icon(Icons.timer),
                onTap: () {

                },
              ),
              ListTile(
                leading: Icon(Icons.event),
                title: Text('Acara'),
                onTap: () {

                },

              ),
              ListTile(
                title: Text('Atur View',
                  style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),
                ),


              ),

              ListTile(
                leading: Icon(Icons.table_chart),
                title: Text('Perpekan'),
                onTap: () {

                },
              ),
              ListTile(
                title: Text('Hanya Agenda'),
                leading: Icon(Icons.list),
                onTap: () {

                },
              ),

            ],
          ),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TableCalendar(
                initialCalendarFormat: CalendarFormat.week,
                calendarStyle: CalendarStyle(
                    todayColor: Colors.orange,
                    selectedColor: Theme.of(context).primaryColor,
                    todayStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.white)),
                headerStyle: HeaderStyle(
                  centerHeaderTitle: true,
                  formatButtonDecoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  formatButtonTextStyle: TextStyle(color: Colors.white),
                  formatButtonShowsNext: false,
                ),
                startingDayOfWeek: StartingDayOfWeek.monday,
                onDaySelected: (date, events) {
                  print(date.toIso8601String());
                },
                builders: CalendarBuilders(
                  selectedDayBuilder: (context, date, events) => Container(
                      margin: const EdgeInsets.all(4.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        date.day.toString(),
                        style: TextStyle(color: Colors.white),
                      )),
                  todayDayBuilder: (context, date, events) => Container(
                      margin: const EdgeInsets.all(4.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        date.day.toString(),
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                calendarController: _controller,
              )
            ],
          ),
        ),
      ),
    );

  }
}