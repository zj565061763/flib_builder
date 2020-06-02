import 'package:flutter/widgets.dart';

mixin FMixinKeyHolder {
  Key key;
}

mixin FMixinChildHolder {
  Widget child;
}

mixin FMixinChildrenHolder {
  List<Widget> children = const <Widget>[];
}
