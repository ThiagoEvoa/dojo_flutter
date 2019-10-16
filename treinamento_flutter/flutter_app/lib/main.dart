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
  var _data = "Tab1";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
            onTap: (position) {
              setState(() {
                switch (position) {
                  case 0:
                    _data = "Tab1";
                    break;
                  case 1:
                    _data = "Tab2";
                    break;
                }
              });
            },
            tabs: <Widget>[
              Tab(
                text: "Tab1",
              ),
              Tab(
                text: "Tab2",
              ),
            ],
          ),
        ),
        body: Center(
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              Center(
                child: Text(_data),
              ),
              Center(
                child: Text(_data),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
