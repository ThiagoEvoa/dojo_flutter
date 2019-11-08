import 'package:flutter/material.dart';
import 'package:flutter_app/post_provider.dart';
import 'package:flutter_app/post_service.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<PostProvider>.value(
          value: PostProvider([]),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    PostService.fetch(context);

    return Scaffold(
      appBar: AppBar(),
      body: Consumer<PostProvider>(
        builder: (context, snapshot, widget) {
          return ListView.builder(
            itemCount: snapshot.getPosts.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                child: ListTile(
                  onTap: () {},
                  leading: Text(snapshot.getPosts[index].id.toString()),
                  title: Text(snapshot.getPosts[index].title),
                  subtitle: Text(snapshot.getPosts[index].body),
                ),
              );
            },
            padding: EdgeInsets.all(1),
          );
        },
      ),
    );
  }
}
