import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Widget customButton(){
    return Platform.isAndroid
        ? RaisedButton(
      onPressed: () {},
      child: Text("Meu Botão"),
    )
        : CupertinoButton(
      onPressed: () {},
      child: Text("Meu Botão"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: customButton(),
        ),
      ),
    );
  }
}
