import 'package:candet/resources/screening.dart';
import "package:flutter/material.dart";
import "package:candet/resources/configs.dart";
//import 'package:candet/loginScreen/firebase_login.dart';


class backdrawer extends StatefulWidget {
  @override
  _backdrawerState createState() => _backdrawerState();
}


class _backdrawerState extends State<backdrawer> {

  @override
  Widget build(BuildContext context) {
    customSize().init(context);
    return Container(
        height: double.infinity,
        width: double.infinity,
        color: lightRedPink,
        alignment: Alignment.centerLeft,
        child: Column(
        children: [
          SizedBox(height: customHeight(90),),
            Row(
              children: [
                SizedBox(width: customWidth(20),),
                CircleAvatar(
                  child: Image.asset('assets/login-both.png',width: customHeight(70),height: customHeight(70),),
                  radius: customHeight(30),
                  backgroundColor: extraLightRedPink,
                  ),
                SizedBox(width: customWidth(10),),
                Column(
                  children:[
                    Container(
                      child: Text(
                        'Hello! User',
                        style: TextStyle(
                          color: extraLightRedPink,
                          fontWeight: FontWeight.w600,
                          fontSize: customHeight(25),
                          fontFamily: "Avenir"
                        ),
                      ),
                      width: customWidth(200),
                      height: customHeight(50),
                      padding: EdgeInsets.fromLTRB(10, 10,0, 10)
                    ),
                  ]
                )
              ],
            ),
          Container(

          ),
        ]
    ),
    );

  }
}

