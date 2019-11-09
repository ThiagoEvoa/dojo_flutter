import 'package:flutter/material.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/post_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PostBloc(child: MyHomePage()),
    );
  }
}
