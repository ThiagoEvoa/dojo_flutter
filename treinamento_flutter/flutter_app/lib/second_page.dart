import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String data;

  const SecondPage({this.data = ""});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(widget.data),
            RaisedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Fechar"),
            )
          ],
        ),
      ),
    );
  }
}
