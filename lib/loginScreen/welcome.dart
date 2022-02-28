import 'package:candet/home.dart';
import 'package:candet/resources/configs.dart';
import 'package:flutter/material.dart';
import "package:splashscreen/splashscreen.dart";
import "package:candet/resources/screening.dart";
import 'package:candet/loginScreen/tolog.dart';


class welcome extends StatefulWidget {
  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    customSize().init(context);
    return
      Stack(
        children:[
          SplashScreen(
            seconds: 3,
            navigateAfterSeconds: AppHome(),
            loaderColor: lightRedPink2,
            backgroundColor: lightRedPink,
            loadingText: Text(
              "Getting things ready for you...",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: "Avenir",
                color: lightRedPink2,
              ),
            ),
          ),
          Column(
            children: [
              Spacer(),
              Container(
                width: double.infinity,
                child: Image.asset("assets/login-both.png",
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width*0.2,
                  height: MediaQuery.of(context).size.height*0.2,
                ),
              ),
              Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child:Column(
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
                  )
              ),
              //Spacer(),
              Spacer(),
            ],
          ),


        ]

    );
  }
}
