import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter_app/post.dart';
import 'package:flutter_app/post_provider.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class PostService {
  static final _url = 'https://jsonplaceholder.typicode.com/posts';

  static fetch(BuildContext context) async {
    final response = await http.get(_url);

    switch (response.statusCode) {
      case 200:
        {
          var provider = Provider.of<PostProvider>(context);

          provider.setPosts(Post.convertPostsToList(response.body));
          break;
        }
      default:
        throw Exception('Failed to retrieve posts');
    }
  }

  static save(Post post, BuildContext context) async {
    final response = post.id != null
        ? await http.put(_url, body: jsonEncode(post))
        : await http.post(_url, body: jsonEncode(post));

    switch (response.statusCode) {
      case 200:
        {
          fetch(context);
          break;
        }
      default:
        throw Exception('Failed to save post');
    }
  }

  static delete(Post post, BuildContext context) async {
    final response = await http.delete('$_url/${post.id}');

    switch (response.statusCode) {
      case 200:
        {
          fetch(context);
          break;
        }
      default:
        throw Exception('Failed to delete post');
    }
  }
}
