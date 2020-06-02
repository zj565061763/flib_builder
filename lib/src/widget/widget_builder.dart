import 'package:flutter/material.dart';

abstract class FWidgetBuilder {
  final Key key;

  FWidgetBuilder({this.key});

  Widget build();
}

abstract class FChildWidgetBuilder extends FWidgetBuilder {
  Widget child;

  FChildWidgetBuilder({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build({Widget child});
}

abstract class FChildrenWidgetBuilder extends FWidgetBuilder {
  List<Widget> _children;

  List<Widget> get children {
    if (_children == null) {
      _children = const <Widget>[];
    }
    return _children;
  }

  FChildrenWidgetBuilder({
    Key key,
    List<Widget> children,
  })  : this._children = children ?? const <Widget>[],
        super(key: key);

  @override
  Widget build({
    List<Widget> children,
  });
}
