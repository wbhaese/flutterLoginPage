import 'package:flutter/material.dart';
import 'package:doglife/pages/login.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dog life',
      debugShowCheckedModeBanner: false,//remove simbolo de debug
      theme: ThemeData(        
        primarySwatch: Colors.deepOrange,
      ),
      home: LoginPage(),
    );
  }
}

