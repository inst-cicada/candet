import 'package:candet/resources/configs.dart';
import 'package:candet/resources/screening.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:candet/loginScreen/firebase_login.dart';
import 'package:candet/loginScreen/welcome.dart';


class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {

  double drawer=customHeight(650);
  bool dclose=true;
  var i=0;

  String eMail,passWord;

  @override
  Widget build(BuildContext context) {
    customSize().init(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.transparent,
      body: Center(
        child: AnimatedContainer(
          transform: Matrix4.translationValues(0, drawer, 0),
          alignment: Alignment.bottomCenter,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    alignment: Alignment.bottomCenter,
                    width: customWidth(80),       //drawer button
                    height: customHeight(100),
                    child:  Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: lightRedPink2,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(90),
                            ),
                            border: Border.all(
                                color: darkRedPink,
                                width: 2
                            )
                        ),
                        width: customWidth(200),
                        height: customHeight(55),
                        child: dclose?IconButton(
                            icon: Icon(Icons.keyboard_arrow_up,color: extraLightRedPink,),
                            onPressed: () {
                              setState(() {
                                drawer=customHeight(0);
                                dclose=false;
                              });
                            }):
                        IconButton(
                            icon: Icon(Icons.keyboard_arrow_down,color: extraLightRedPink),
                            onPressed:() {
                              setState(() {
                                drawer=customHeight(650);
                                dclose=true;
                              });
                            })

                    )
                ),
                Container(
                    decoration: BoxDecoration(
                      color: extraLightRedPink,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(36),
                        bottom: Radius.circular(36),
                      ),
                    ),
                    width:double.infinity,
                    height:customHeight(650),
                    child: Column(
                        children:[
                          SizedBox(height: customHeight(50)),
                          Text("Sign In To",style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: "Avenir",
                            color: Colors.black54,
                            fontSize: customHeight(22),
                            fontWeight: FontWeight.w700,

                             ),
                            ),
                          Text("CANDET",style: TextStyle(
                            decoration:TextDecoration.none,
                            fontFamily:"Avenir",
                            fontWeight: FontWeight.w900,
                            fontSize: customHeight(50),
                            color: lightRedPink2,
                            ),
                          ),
                          SizedBox(height: customHeight(50),),
                          //email field
                          Container(
                            width: customWidth(280),
                            height: customHeight(50),
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: customWidth(3),
                                color: Colors.black38,              //black38
                              ),
                              borderRadius: BorderRadius.circular(45),

                            ),
                            padding:EdgeInsets.all(customWidth(8)),
                            child:Row(
                              children: [
                                Icon(Icons.mail_outline,color: Colors.black26,size: customWidth(20),),
                                Expanded(

                                  child: TextField(
                                    obscureText: false,
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: customHeight(14),
                                    ),
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.fromLTRB(
                                            10,
                                            0,
                                            0,
                                            customHeight(13)
                                        ),
                                        hintText: "E-Email Address",
                                      hintStyle: TextStyle(fontStyle: FontStyle.italic)
                                    ),
                                    onChanged: (val){
                                      eMail=val;
                                    },

                                    )
                                )
                              ],
                            )
                          ),
                          SizedBox(height: customHeight(40),),
                          //passwordfield
                          Container(
                              width: customWidth(280),
                              height: customHeight(50),
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: customWidth(3),
                                  color: Colors.black38,              //black38
                                ),
                                borderRadius: BorderRadius.circular(45),

                              ),
                              padding:EdgeInsets.all(customWidth(8)),
                              child:Row(
                                children: [
                                  Icon(Icons.vpn_key_outlined,color: Colors.black26,size: customWidth(20),),
                                  Expanded(

                                      child: TextField(
                                          obscureText: true,
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: customHeight(14),
                                          ),
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              contentPadding: EdgeInsets.fromLTRB(
                                                  10,
                                                  0,
                                                  0,
                                                  customHeight(13)
                                              ),
                                              hintText: "Password",
                                              hintStyle: TextStyle(fontStyle: FontStyle.italic)
                                          ),
                                        onChanged: (val){
                                            passWord=val;
                                        },

                                      )
                                  )
                                ],
                              )
                          ),
                          SizedBox(height:customHeight(50)),
                          //button
                          GestureDetector(
                            child: Container(
                              alignment: Alignment.center,
                              width: customWidth(280),
                              height: customHeight(50),
                              decoration: BoxDecoration(
                                color: lightRedPink2,
                                border: Border.all(
                                  width: customWidth(3),
                                  color: lightRedPink,              //black38
                                ),
                                borderRadius: BorderRadius.circular(45),

                              ),
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: customHeight(20),
                                  fontFamily: "Avenir",
                                  fontWeight: FontWeight.w600,
                                  color: extraLightRedPink,
                                ),
                              ),

                            ),
                            onTap: (){
                              eSignIn(eMail, passWord).whenComplete(() => Navigator.of(
                                  context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context)=>welcome())
                                )
                              );
                            },
                          ),
                          SizedBox(height: customHeight(20),),
                          Text(
                            "- - - - - - Or - - - - - -",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.black54,
                            )
                          ),
                          SizedBox(height: customHeight(20),),
                          GestureDetector(
                            child: Container(
                              alignment: Alignment.center,
                              width: customWidth(280),
                              height: customHeight(50),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(
                                  width: customWidth(3),
                                  color: lightRedPink,              //black38
                                ),
                                borderRadius: BorderRadius.circular(45),

                              ),
                              child: Row(
                                children: [Spacer(),
                                  Container(
                                    height: customHeight(25),
                                    width:  customWidth(25),
                                    child: Image.asset(
                                      "assets/google.png",
                                      alignment: Alignment.center,

                                    ),
                                  ),
                                  SizedBox(width: customWidth(10)),
                                  Text(
                                    "Sign In With Google",
                                    style: TextStyle(
                                      fontSize: customHeight(18),
                                      fontFamily: "Avenir",
                                      fontWeight: FontWeight.w600,
                                      color: darkRedPink,
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),

                            ),
                            onTap: (){
                              userDesc();
                              gSignIn().whenComplete(() => Navigator.of(
                                  context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context)=>welcome())
                              )
                              );
                              },
                          ),




                        ]               //logpage column MAIN

                    )
                ),
              ],
            ),
          ),
          width: customWidth(350),
          height: customHeight(812),
          duration: Duration(milliseconds: 300), //customHeight(712)
        ),
      ),
    );
  }


}


