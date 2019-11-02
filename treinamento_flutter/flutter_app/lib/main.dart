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
  String _value = '';

  @override
  Widget build(BuildContext context) {
    Future _selectDate() async {
      DateTime dateTime = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(DateTime.now().year),
          lastDate: DateTime(DateTime.now().year + 100),
          builder: (context, child) {
            return Theme(
              data: ThemeData.light(),
              child: child,
            );
          });

      if (dateTime != null) {
        setState(() {
          _value = dateTime.toString();
        });
      }
    }

    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () {
              _selectDate();
            },
            icon: Icon(Icons.calendar_today),
          ),
          Text(_value),
        ],
      ),
    );
  }
}
