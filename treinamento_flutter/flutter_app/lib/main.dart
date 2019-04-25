import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

import 'package:flutter_app/second.dart';

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
  Widget customButton() {
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
      child: Container(
        alignment: Alignment.topLeft,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              PageRouteBuilder(
                  pageBuilder: (context, animation, secondAnimation) {
                    return Second();
                  },
                  transitionDuration: Duration(seconds: 1)),
            );
          },
          child: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Hero(
              tag: 'img',
              child: FlutterLogo(
                size: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
