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
  List<bool> _isMultiSelected = [false, false];
  List<bool> _isSelected = [false, false];
  List<bool> _isMultiRequiredSelected = [true, true];

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
            Text("Multi Select"),
            ToggleButtons(
              onPressed: (index) {
                setState(() {
                  _isMultiSelected[index] = !_isMultiSelected[index];
                });
              },
              isSelected: _isMultiSelected,
              children: <Widget>[
                Icon(Icons.camera),
                Icon(Icons.image),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text("Select"),
            ),
            ToggleButtons(
              onPressed: (index) {
                setState(() {
                  for (var i = 0; i < _isSelected.length; i++) {
                    if (i == index) {
                      _isSelected[i] = true;
                    } else {
                      _isSelected[i] = false;
                    }
                  }
                });
              },
              isSelected: _isSelected,
              children: <Widget>[
                Icon(Icons.camera),
                Icon(Icons.image),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Text("MultiRequiredSelect"),
            ),
            ToggleButtons(
              onPressed: (index) {
                int count = 0;
                _isMultiRequiredSelected.forEach((bool val) {
                  if (val) count++;
                });

                if (_isMultiRequiredSelected[index] && count < 2) return;

                setState(() {
                  _isMultiRequiredSelected[index] =
                      !_isMultiRequiredSelected[index];
                });
              },
              isSelected: _isMultiRequiredSelected,
              children: <Widget>[
                Icon(Icons.camera),
                Icon(Icons.image),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
