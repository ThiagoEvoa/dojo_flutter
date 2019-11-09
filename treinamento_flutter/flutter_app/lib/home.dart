import 'package:flutter/material.dart';
import 'package:flutter_app/detail.dart';
import 'package:flutter_app/post.dart';
import 'package:flutter_app/post_provider.dart';
import 'package:flutter_app/post_service.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _globalKey = GlobalKey<ScaffoldState>();
  String _message;

  _openDetail({Post post}) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>
            Detail(id: post?.id, title: post?.title, body: post?.body),
      ),
    );
  }

  _delete(Post post) async{
    _message = await PostService.delete(post, context);
    _globalKey.currentState.showSnackBar(
      SnackBar(
        content: Text(_message),
        duration: Duration(seconds: 5),
      ),
    );
  }

  @override
  void initState() {
    PostService.fetch(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: AppBar(),
      body: Consumer<PostProvider>(
        builder: (context, snapshot, widget) {
          if (snapshot.getPosts.length != 0) {
            return ListView.builder(
              itemCount: snapshot.getPosts.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 5,
                  child: ListTile(
                    onTap: () {
                      _openDetail(post: snapshot.getPosts[index]);
                    },
                    leading: Text(snapshot.getPosts[index].id.toString()),
                    title: Text(snapshot.getPosts[index].title),
                    subtitle: Text(snapshot.getPosts[index].body),
                    trailing: IconButton(
                      onPressed: () {
                        _delete(snapshot.getPosts[index]);
                      },
                      icon: Icon(Icons.delete),
                    ),
                  ),
                );
              },
              padding: EdgeInsets.all(1),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openDetail,
        child: Icon(Icons.add),
      ),
    );
  }
}
