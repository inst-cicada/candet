import 'package:flutter/material.dart';
import 'package:candet/loginScreen/logbutton.dart';
import 'package:candet/loginScreen/logIn.dart';

class logHome extends StatefulWidget {
  @override
  _logHomeState createState() => _logHomeState();
}

class _logHomeState extends State<logHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children:[
            logbutton(),
            login(),


          ]
      ),
    );
  }
}
