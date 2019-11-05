import 'package:flutter/material.dart';
import 'package:flutter_app/second_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo With Bloc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'First Page'),
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
  _push(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }

  _pushReplacement(BuildContext context, Widget widget) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(hintText: "Push with data"),
                onSubmitted: (text) {
                  _push(
                    context,
                    SecondPage(
                      data: text,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: RaisedButton(
                onPressed: () {
                  _push(context, SecondPage());
                },
                child: Text("Push"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: RaisedButton(
                onPressed: () {
                  _pushReplacement(context, SecondPage());
                },
                child: Text("Push Replacement"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
