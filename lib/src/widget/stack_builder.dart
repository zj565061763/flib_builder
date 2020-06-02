import 'package:flib_builder/src/widget//widget_builder.dart';
import 'package:flutter/material.dart';

class FBStack extends FChildrenWidgetBuilder {
  AlignmentDirectional alignment;
  TextDirection textDirection;
  StackFit fit;
  Overflow overflow;

  FBStack({
    Key key,
    this.alignment = AlignmentDirectional.topStart,
    this.textDirection,
    this.fit = StackFit.loose,
    this.overflow = Overflow.clip,
    List<Widget> children = const <Widget>[],
  }) : super(key: key, children: children);

  @override
  Widget buildImpl() {
    return Stack(
      key: this.key,
      alignment: this.alignment,
      textDirection: this.textDirection,
      fit: this.fit,
      overflow: this.overflow,
      children: this.children,
    );
  }
}
