import 'package:flutter/foundation.dart';
import 'package:flutter_app/post.dart';

class PostProvider extends ChangeNotifier{
  List<Post> _posts;

  PostProvider(this._posts);

  List<Post> get getPosts => _posts;

  setPosts(List<Post> posts){
    this._posts = posts;
    notifyListeners();
  }
}