import 'package:flutter/material.dart';

abstract class FWidgetBuilder {
  Widget build();
}

abstract class FChildWidgetBuilder extends FWidgetBuilder {
  FWidgetBuilder _child;

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
  List<FWidgetBuilder> _children = const <FWidgetBuilder>[];

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
