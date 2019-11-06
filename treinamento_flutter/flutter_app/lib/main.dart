import 'package:flutter/material.dart';
import 'package:flutter_app/theme_provider.dart';
import 'package:flutter_app/themes.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      ChangeNotifierProvider<ThemeProvider>(
        builder: (_) => ThemeProvider(darkTheme),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeProvider.getTheme(),
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
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                themeProvider.setTheme(lightTheme);
              },
              child: Text("Light Theme"),
            ),
            RaisedButton(
              onPressed: () {
                themeProvider.setTheme(darkTheme);
              },
              child: Text("Dark Theme"),
            ),
          ],
        ),
      ),
    );
  }
}
