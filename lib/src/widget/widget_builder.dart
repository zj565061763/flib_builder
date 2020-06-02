import 'package:flutter/material.dart';

abstract class FWidgetBuilder {
  final Key key;
  final bool stateful;

  FWidgetBuilder({
    this.key,
    this.stateful = true,
  }) : assert(stateful != null);

  Widget build() {
    if (!stateful) {
      return buildImpl();
    }
    return buildImpl();
  }

  @protected
  Widget buildImpl();
}

abstract class FChildWidgetBuilder extends FWidgetBuilder {
  Widget child;

  FChildWidgetBuilder({
    Key key,
    this.child,
  }) : super(key: key);

  @protected
  @override
  Widget buildImpl({Widget child});
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

  @protected
  @override
  Widget buildImpl({
    List<Widget> children,
  });
}
