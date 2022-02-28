import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_swiper/flutter_swiper.dart';
import "package:candet/resources/configs.dart";
import "package:candet/resources/operations.dart";
import "package:candet/resources/screening.dart";

class first extends StatefulWidget {
  @override
  _firstState createState() => _firstState();
}

class _firstState extends State<first> {
  double xVal=0;
  double yVal=0;
  double scaleVal=1;
  double contRad=0;
  bool drawerOpen=false;
  @override
  Widget build(BuildContext context) {
    customSize().init(context);
    return AnimatedContainer(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(drawerOpen?30:0),
          color: Colors.white,
        ),
        transform: Matrix4.translationValues(xVal, yVal, 0)..scale(scaleVal),
        duration: Duration(milliseconds: 150),
        child: Column(
            children:[
              SizedBox(height: customHeight(50),),
              Row(
                  children:[
                    drawerOpen?IconButton(icon: Icon(Icons.arrow_back),
                        iconSize: customHeight(30),
                        onPressed:(){
                          setState((){
                            xVal=0;
                            yVal=0;
                            scaleVal=1;
                            drawerOpen=false;
                          });
                        }):
                    IconButton(icon: Icon(Icons.menu),
                        iconSize: customHeight(30),
                        onPressed: (){
                          setState((){
                            xVal=customWidth(170);
                            yVal=customHeight(220);
                            scaleVal=0.5;
                            drawerOpen=true;
                          });

                        }),

                    Column(
                        children:[
                          Container(
                            width: customWidth(280),
                            child: Text('CANDET',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: customHeight(25),
                              ),
                            ),
                          ),
                          Container(
                              width: customWidth(280),
                              child:Text('Detect Cancer Easily',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: customWidth(15),
                                  )
                              )
                          ),
                        ]
                    ),

                  ]
              ),
              Center(
                child: Container(
                    height: customHeight(650),
                    child: Swiper(
                        itemCount: menu.length,
                        itemWidth: customWidth(280),
                        itemHeight: customHeight(650),
                        layout: SwiperLayout.STACK,
                        pagination: SwiperPagination(
                          builder: DotSwiperPaginationBuilder(),alignment: Alignment.bottomCenter,
                        ),
                        itemBuilder: (context, index){
                          return Stack(
                              children:[
                                Column(
                                  children: [SizedBox(height: customHeight(150),),
                                    Card(
                                        elevation: 15,
                                        shadowColor: lightRedPink,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.horizontal(
                                                left: Radius.circular(20),
                                                right: Radius.circular(90))
                                        ),
                                        color: extraLightRedPink,
                                        child:Padding(
                                          padding: const EdgeInsets.all(35),
                                          child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children:[
                                                SizedBox(height: customHeight(110),width: customWidth(190)),
                                                Text(
                                                  menu[index].name,
                                                  style:TextStyle(
                                                    fontFamily: 'Avenir',
                                                    fontSize: customHeight(38),
                                                    color: darkRedPink,
                                                    fontWeight: FontWeight.w900,
                                                  ),
                                                  textAlign:TextAlign.left,
                                                ),
                                                SizedBox(height: customHeight(15)),
                                                Text(
                                                  menu[index].description,
                                                  style:TextStyle(
                                                    fontFamily: 'Avenir',
                                                    fontSize: customHeight(20),
                                                    color:Colors.black45,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                  textAlign:TextAlign.left,
                                                ),
                                                SizedBox(height: customHeight(30)),
                                                GestureDetector(
                                                  child:Container(
                                                    width:customWidth(120),
                                                    height: customHeight(36),
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: Colors.black54,
                                                            width: customWidth(3)
                                                        ),
                                                        //color: lightButtonShadow,
                                                        //boxShadow: [
                                                        //  BoxShadow(
                                                        //color: lightButtonShadow,
                                                        //blurRadius: 20.0, // soften the shadow
                                                        //spreadRadius: 5.0, //extend the shadow
                                                        //offset: Offset(
                                                        //10.0, // Move to right 10  horizontally
                                                        //10.0, // Move to bottom 10 Vertically
                                                        //),
                                                        //),],
                                                        borderRadius: BorderRadius.circular(20)
                                                    ),
                                                    child: Row(
                                                      children: [Spacer(),
                                                        Icon(Icons.assignment_rounded,
                                                          size: customHeight(15),
                                                          color: Colors.black54
                                                          ,),
                                                        SizedBox(width:customWidth(5)),
                                                        Text(
                                                          "Diagnose Here",
                                                          style:TextStyle(
                                                            fontFamily: 'Avenir',
                                                            fontSize: customHeight(15),
                                                            color: Colors.black54,
                                                            fontWeight: FontWeight.w700,
                                                          ),
                                                          textAlign:TextAlign.left,
                                                        ),
                                                        Spacer(),
                                                      ],
                                                    ),
                                                  ),
                                                  
                                                  onTap: (){
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(builder: (context) => menu[index].func),
                                                    );
                                                  }
                                                )
                                              ],
                                          ),
                                        )
                                    )

                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(height: customHeight(80),),
                                    Row(
                                      children: [
                                        SizedBox(width: customHeight(10)),
                                        Container(
                                          width: customWidth(170),
                                          height: customHeight(190),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(90),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black38,
                                                  blurRadius: 10,
                                                )
                                              ]
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    SizedBox(height: customHeight(65),),
                                    Image.asset(menu[index].iconImage,
                                      width: customWidth(180),
                                      height: customHeight(200),

                                    ),
                                  ],
                                ),
                              ]
                          );
                        }

                    )

                ),
              ),
            ]
        )
    );
  }
}
