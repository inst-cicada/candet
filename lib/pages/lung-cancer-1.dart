import 'package:flutter/material.dart';
import 'package:candet/resources/screening.dart';
import 'package:candet/resources/configs.dart';
import 'dart:async';
import 'package:image_picker/image_picker.dart';
import 'package:candet/pages/apiget.dart';
import 'dart:convert';


class lungCancer extends StatefulWidget {
  @override
  _lungCancerState createState() => _lungCancerState();
}

class _lungCancerState extends State<lungCancer> {
  var data;

  PickedFile image;
  String name;
  String upl='Click here to pick!';
  Icon ico=Icon(Icons.camera_alt,size: customHeight(35),color: lightRedPink2,);
  Future pickingImage() async {
    var pickedImage = await ImagePicker().getImage(source: ImageSource.gallery);
    if(pickedImage!=null) {
      setState(() {
        image = pickedImage;
        upl = 'Picked the Image!';
        name=image.path;
        ico = Icon(
          Icons.done_outlined, size: customHeight(35), color: lightRedPink2,);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    customSize().init(context);
    return Scaffold(
      appBar: new AppBar(backgroundColor: Colors.white,iconTheme: IconThemeData(color: darkRedPink),elevation: 0,),
      body: Container(
        height:double.infinity,
        width:double.infinity,
        color: Colors.white,
        child: Column(
            children: [
              Spacer(),
              Text(
                'Upload your Lung mamogram image here',
                style: TextStyle(
                    decoration: TextDecoration.none,
                    color: darkRedPink,
                    fontWeight: FontWeight.w600,
                    fontSize: customHeight(20),
                    fontFamily: "Avenir"
                ),
              ),
              SizedBox(height: customHeight(50),),
              GestureDetector(
                child: Container(
                  child: Row(
                    children: [
                      Spacer(),
                      ico,
                      SizedBox(width: customWidth(08),),
                      Text(
                        upl,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: lightRedPink2,
                            fontWeight: FontWeight.w600,
                            fontSize: customHeight(15),
                            fontFamily: "Avenir"
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  width: customWidth(200),
                  height: customHeight(200),
                  decoration: BoxDecoration(
                    color: extraLightRedPink,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                        color: lightRedPink2,
                        width: customWidth(3)
                    ),

                  ),
                ),
                onTap: (){
                  pickingImage();
                },                                 //image upload functions
              ),
              SizedBox(height: customHeight(70),),
              GestureDetector(
                child: Container(
                    width: customWidth(200),
                    height: customHeight(60),
                    decoration: BoxDecoration(
                      color: lightRedPink,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                        children: [
                          Spacer(),
                          Text(
                            'Get your results',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: extraLightRedPink,
                                fontWeight: FontWeight.w600,
                                fontSize: customHeight(16),
                                fontFamily: "Avenir"
                            ),
                          ),
                          Spacer(),
                        ]
                    )
                ),
                onTap: ()async{
                  data=getdata();
                  var decodeddata=jsonDecode(data);
                  print(decodeddata);

                },                                //results function
              ),
              SizedBox(height: customHeight(25),),
              GestureDetector(
                child: Container(
                    width: customWidth(200),
                    height: customHeight(60),
                    decoration: BoxDecoration(
                      color: extraLightRedPink,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                        children: [
                          Spacer(),
                          Text(
                            'Reset',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                color: darkRedPink,
                                fontWeight: FontWeight.w600,
                                fontSize: customHeight(16),
                                fontFamily: "Avenir"
                            ),
                          ),
                          Spacer(),
                        ]
                    )
                ),
                onTap: (){
                  setState((){
                    image=null;
                    ico=Icon(Icons.camera_alt,size: customHeight(35),color: lightRedPink2,);
                    upl='Click here to pick!';

                  });
                },                              //reseting the interface function
              ),
              Spacer()
            ]
        ),
      ),
    );
  }
}
