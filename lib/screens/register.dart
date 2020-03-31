import 'package:flutter/material.dart';
import 'package:instawork/screens/map.dart';
class MyForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Name',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: RaisedButton(
            color: Colors.blue,
            child: Text("Register"),
            onPressed: (){
              Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>MyMap())
              );
            }
          ),
        ),
          ]
        ),
      ),
    );
  }
}