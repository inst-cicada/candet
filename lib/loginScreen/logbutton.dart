import 'package:candet/resources/configs.dart';
import 'package:flutter/material.dart';
import 'package:candet/resources/screening.dart';


class logbutton extends StatefulWidget {
  @override
  _logbuttonState createState() => _logbuttonState();
}

class _logbuttonState extends State<logbutton> {
  @override
  Widget build(BuildContext context) {
    customSize().init(context);
    return Container(
      height:double.infinity,
      width:double.infinity,
      color:lightRedPink,
      child:Column(
          children: [
            Spacer(),
            Container(
                width: double.infinity,
                child: Image.asset(
                  "assets/login-both.png",
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width*0.2,
                  height: MediaQuery.of(context).size.height*0.2,
                )
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Column(
                  children:[
                    Text("Welcome to",
                      style:TextStyle(
                        color: lightRedPink2,
                        fontFamily: "Avenir",
                        fontSize: customHeight(25),
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Text("CANDET",
                      style:TextStyle(
                        color: extraLightRedPink,
                        fontFamily: "Avenir",
                        fontSize: customHeight(40),
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.none,
                      ),
                    )
                  ]
              ),
            ),
            Spacer(),

            //nologbutton here
          ]
      ),
    );
  }
}
