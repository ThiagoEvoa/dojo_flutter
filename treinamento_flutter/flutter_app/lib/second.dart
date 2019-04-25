import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: 400,
        height: 400,
        child: Hero(
          tag: 'img',
          child: FlutterLogo(),
        ),
      ),
    );
  }
}
