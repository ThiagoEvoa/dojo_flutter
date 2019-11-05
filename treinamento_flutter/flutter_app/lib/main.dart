import 'package:flutter/material.dart';
import 'package:flutter_app/Page2.dart';
import 'package:flutter_app/drawer_controller.dart';
import 'package:flutter_app/page1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo With Bloc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomDrawerController(
        child: MyHomePage(title: ''),
      ),
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
  final pages = [Page1(), Page2()];

  @override
  Widget build(BuildContext context) {
    final _controller = CustomDrawerController.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: StreamBuilder<int>(
        stream: _controller.output,
        builder: (context, snapshot) {
          return Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.person,
                              color: Theme.of(context).primaryColor,
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Meu Header",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Text(
                        "Com Flutter",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  selected: snapshot.data == 0,
                  onTap: () {
                    _controller.input.add(0);
                    Scaffold.of(context).openEndDrawer();
                  },
                  leading: Icon(
                    Icons.home,
                    color: snapshot.data == 0
                        ? Theme.of(context).primaryColor
                        : null,
                  ),
                  title: Text(
                    "Page 1",
                    style: TextStyle(
                        color: snapshot.data == 0
                            ? Theme.of(context).primaryColor
                            : Colors.black54),
                  ),
                ),
                ListTile(
                  selected: snapshot.data == 1,
                  onTap: () {
                    _controller.input.add(1);
                    Scaffold.of(context).openEndDrawer();
                  },
                  leading: Icon(
                    Icons.account_box,
                    color: snapshot.data == 1
                        ? Theme.of(context).primaryColor
                        : null,
                  ),
                  title: Text(
                    "Page 2",
                    style: TextStyle(
                        color: snapshot.data == 1
                            ? Theme.of(context).primaryColor
                            : Colors.black54),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      body: StreamBuilder(
        stream: _controller.output,
        builder: (context, snapshot) {
          return PageView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[pages[snapshot.data]],
          );
        },
      ),
    );
  }
}
