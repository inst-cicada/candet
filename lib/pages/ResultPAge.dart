import 'package:flutter/material.dart';
import 'package:candet/resources/screening.dart';
import 'package:candet/resources/configs.dart';

class resultTab extends StatefulWidget {
  @override
  _resultTabState createState() => _resultTabState();
}

class _resultTabState extends State<resultTab> {
  @override
  Widget build(BuildContext context) {
    customSize().init(context);
    return Scaffold(
      appBar: new AppBar(backgroundColor: Colors.white,iconTheme: IconThemeData(color: darkRedPink),elevation: 0,),
      body: Container(color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child:
          Column(
            children: [
              Spacer(),
        Text(
          "Result",
          style: TextStyle(
              decoration: TextDecoration.none,
              color: lightRedPink2,
              fontWeight: FontWeight.w600,
              fontSize: customHeight(35),
              fontFamily: "Avenir"
            )
        ),
              
              Spacer(),
            ],
          ),
      ),
    );
  }
}
