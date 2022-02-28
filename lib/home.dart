import "package:flutter/material.dart";
import "package:candet/drawer.dart";
import "package:candet/pages/first.dart";

class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  //setting the state eg. setState(()=>{}) inside
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            backdrawer(),
            first(),
          ],
        )

    );

  }
}


