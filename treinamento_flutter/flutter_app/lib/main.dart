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
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Listview"),
              subtitle: Text("Simple Listview example"),
              trailing: Icon(Icons.delete),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Listview"),
              subtitle: Text("Simple Listview example"),
              trailing: Icon(Icons.delete),
            ),ListTile(
              leading: Icon(Icons.person),
              title: Text("Listview"),
              subtitle: Text("Simple Listview example"),
              trailing: Icon(Icons.delete),
            ),ListTile(
              leading: Icon(Icons.person),
              title: Text("Listview"),
              subtitle: Text("Simple Listview example"),
              trailing: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
