import 'package:flutter/material.dart';
import 'package:socia_app/profile/profile1.dart';
import 'package:socia_app/profile/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home:Profile1(),
    );
  }
}




