import 'package:flutter/material.dart';
import 'dart:async';
import 'login_view.dart';

class LayarUtama extends StatefulWidget {
  @override
  _LayarUtamaState createState() => _LayarUtamaState() ;
}

class _LayarUtamaState extends State<LayarUtama> {

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }
  startSplashScreen() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return LoginPage();
      }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "images/1.jpeg",
          width: 400.0,
          height: 200.0,
        ),
      ),
    );
  }
}