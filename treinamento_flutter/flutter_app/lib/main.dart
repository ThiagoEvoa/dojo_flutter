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
    Future<void> _dialog() async {
      return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text("Dialog"),
            content: Text("Simple dialog example"),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("ok"),
              )
            ],
          );
        },
      );
    }

    Future<void> _generalDialog() async {
      return showGeneralDialog(
        context: context,
        barrierDismissible: false,
        transitionDuration: Duration(seconds: 3),
        transitionBuilder: (context, animation, secondaryAnimation, child) {
          var fadeTween = CurveTween(curve: Curves.fastOutSlowIn);
          var fadeAnimation = fadeTween.animate(animation);
          return FadeTransition(
            opacity: fadeAnimation,
            child: child,
          );
        },
        pageBuilder: (context, animation, secondaryAnimation) {
          return AlertDialog(
            title: Text("Dialog"),
            content: Text("GeneralDialog example"),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("ok"),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: RaisedButton(
                onPressed: _dialog,
                child: Text("Dialog"),
              ),
            ),
            RaisedButton(
              onPressed: _generalDialog,
              child: Text("General Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}
