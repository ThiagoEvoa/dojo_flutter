import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: RichText(
          text: TextSpan(
            text: 'Rich ',
            style: TextStyle(color: Theme.of(context).primaryColor),
            children: <TextSpan>[
              TextSpan(
                text: 'Te',
                style: TextStyle(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'tx',
                style: TextStyle(
                    color: Theme.of(context).primaryColorDark, fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
