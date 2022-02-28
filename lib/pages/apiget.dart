import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';
Future getdata() async {
  http.Response Response=await http.get('http://127.0.0.1:5000/');
  var s=jsonDecode(Response.body);
  print(s['result']);
  }
