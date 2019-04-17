import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class CustomDrawerController extends InheritedWidget {
  final Widget child;

  CustomDrawerController({this.child}) : super(child: child);

  final BehaviorSubject<int> _streamController = BehaviorSubject.seeded(0);
  Sink<int> get input => _streamController.sink;
  Stream<int> get output => _streamController.stream;

  static CustomDrawerController of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(CustomDrawerController)
        as CustomDrawerController;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return oldWidget != this;
  }
}
