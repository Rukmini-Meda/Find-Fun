import 'package:flutter/material.dart';
import 'package:instawork/screens/register.dart';
import 'package:instawork/screens/login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(title: Text("Findfun"),centerTitle: true,),
      body: Column(
        children: <Widget>[
          RaisedButton(
          color: Colors.blue,
          child: Text("Register"),
          onPressed: (){
          Navigator.push(context, 
            MaterialPageRoute(builder: (context)=>MyForm()),
          );
        },),
        RaisedButton(
          color: Colors.blue,
          child: Text("Login"),
          onPressed: (){
          Navigator.push(context, 
            MaterialPageRoute(builder: (context)=>MyLoginForm()),
          );
        },),
        ],
      )
    );
  }
}