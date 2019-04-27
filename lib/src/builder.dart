import 'package:flutter/material.dart';

abstract class FWidgetBuilder {
  Key key;

  Widget build();
}

abstract class FChildWidgetBuilder extends FWidgetBuilder {
  Widget child;
}

abstract class FChildrenWidgetBuilder extends FWidgetBuilder {
  List<Widget> children = const <Widget>[];
}
