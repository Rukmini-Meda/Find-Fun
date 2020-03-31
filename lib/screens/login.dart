import 'package:flutter/material.dart';

class MyLoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
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
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: RaisedButton(
            color: Colors.blue,
            child: Text("Login"),
            onPressed: (){}
          ),
        ),
          ]
        ),
      ),
    );
  }
}