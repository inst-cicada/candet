
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:candet/loginScreen/tolog.dart';
import 'package:candet/pages/ResultPAge.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    home: resultTab(),                                                                 //use welcome
  ));
}






