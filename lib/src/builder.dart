import 'package:flutter/material.dart';

abstract class FWidgetBuilder {
  Widget build();
}

mixin FMixinKeyHolder {
  Key key;
}

mixin FMixinChildHolder {
  Widget child;
}

mixin FMixinChildrenHolder {
  List<Widget> children = const <Widget>[];
}
