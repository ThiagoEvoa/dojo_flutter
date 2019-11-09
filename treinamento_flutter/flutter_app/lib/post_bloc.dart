import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';

class PostBloc extends InheritedWidget {
  final Widget child;

  PostBloc({this.child}) : super(child: child);

  final BehaviorSubject<dynamic> _stream = BehaviorSubject.seeded([]);
  Sink<dynamic> get input => _stream.sink;
  Stream<dynamic> get output => _stream.stream;

  static PostBloc of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(PostBloc) as PostBloc;
  }

  close() {
    _stream.close();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return oldWidget != this;
  }
}
