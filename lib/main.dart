import 'package:call_backs/screens/first.dart';
import 'package:call_backs/screens/home.dart';
import 'package:call_backs/screens/second.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      
       routes: {
        MyHomePage.routeName: (context) {
          return First();
        },
        First.routeName: (context) {
          return First();
        },
         Second.routeName: (context) {
          return Second();
        },
      },
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}



