import 'package:flutter/material.dart';
import 'package:flutter_app/menu_itens.dart';
import 'package:flutter_app/whyfarther.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          PopupMenuButton(
            icon: Icon(Icons.menu),
            onSelected: (result) {},
            itemBuilder: (context) => <PopupMenuEntry<MenuItens>>[
              const PopupMenuItem<MenuItens>(
                value: MenuItens.option1,
                child: Text("First Option"),
              ),
              const PopupMenuItem<MenuItens>(
                value: MenuItens.option2,
                child: Text("Second Option"),
              ),
              const PopupMenuItem<MenuItens>(
                value: MenuItens.option3,
                child: Text("Third Option"),
              ),
            ],
          ),
        ],
      ),
      body: Container(),
    );
  }
}
