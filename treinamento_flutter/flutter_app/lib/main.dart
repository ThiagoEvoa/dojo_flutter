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
  final _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(),
      body: Center(
        child: Builder(
          builder: (context) => RaisedButton(
            onPressed: () {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text("Snackbar"),
                ),
              );
            },
            child: Text("Button"),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _globalKey.currentState.showSnackBar(
            SnackBar(
              content: Text("Snackbar with global key"),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
