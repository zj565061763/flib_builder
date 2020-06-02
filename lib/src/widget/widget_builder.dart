import 'package:flutter/material.dart';

abstract class FWidgetBuilder {
  Key key;

  FWidgetBuilder({this.key});

  Widget build();
}

abstract class FChildWidgetBuilder extends FWidgetBuilder {
  FWidgetBuilder _child;

  FChildWidgetBuilder({
    Key key,
    FWidgetBuilder child,
  }) : super(key: key) {
    if (child != null) {
      _child = child;
    }
  }

  FChildWidgetBuilder child(FWidgetBuilder child) {
    if (child != null) {
      _child = child;
    }
    return this;
  }

  Widget childWidget() {
    return _child == null ? null : _child.build();
  }
}

abstract class FChildrenWidgetBuilder extends FWidgetBuilder {
  List<FWidgetBuilder> _children;

  FChildrenWidgetBuilder({
    Key key,
    List<FWidgetBuilder> children = const <FWidgetBuilder>[],
  }) : super(key: key) {
    if (children != null) {
      _children = children;
    }
  }

  FChildrenWidgetBuilder children(List<FWidgetBuilder> children) {
    if (children != null) {
      _children = children;
    }
    return this;
  }

  List<Widget> childrenWidget() {
    final List<Widget> list = [];
    _children.forEach((element) {
      list.add(element.build());
    });
    return list;
  }
}
