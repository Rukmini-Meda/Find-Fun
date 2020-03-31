import 'package:flutter/material.dart';
import 'package:instawork/screens/home.dart';
// import 'package:instawork/screens/register.dart';


void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Findfun",
      home: Home(),
      // routes: {
      //   '/register': (context)=>MyForm()
      // },
    );
  }
}

