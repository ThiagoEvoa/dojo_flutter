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

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final items =
      List<String>.generate(20, (items) => "Minha ListView.builder $items");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minha AppBar"),
      ),
      body: Container(
        child: ReorderableListView(
          onReorder: (int oldIndex, int newIndex) {
            setState(() {
              if(newIndex > oldIndex){
                newIndex -= 1;
              }
              var item = items.removeAt(oldIndex);
              items.insert(newIndex, item);
            });
          },
          header: Text('Header'),
          children: <Widget>[
            for (final item in items)
              ListTile(
                key: ValueKey(item),
                title: Text(item),
              ),
          ],
        ),
      ),
    );
  }
}
