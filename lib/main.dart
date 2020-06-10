import 'package:flutter/material.dart';
import 'Dashboard.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: 'Anganwadi App',
      theme: ThemeData.light(
       // primaryColor: new Color(0xffb6c1),
      ),

      home: Dashboard (),
    );
  }
}