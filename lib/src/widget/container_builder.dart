import 'package:flib_builder/src/widget/widget_builder.dart';
import 'package:flutter/material.dart';

import 'mixins.dart';

class FContainerBuilder extends FWidgetBuilder
    with FMixinKeyHolder, FMixinChildHolder {
  AlignmentGeometry alignment;
  EdgeInsetsGeometry padding;
  Color color;
  Decoration decoration;
  Decoration foregroundDecoration;
  double width;
  double height;
  BoxConstraints constraints;
  EdgeInsetsGeometry margin;
  Matrix4 transform;
  Clip clipBehavior = Clip.none;

  @override
  Widget build({
    Widget child,
  }) {
    return Container(
      key: this.key,
      alignment: this.alignment,
      padding: this.padding,
      color: this.color,
      decoration: this.decoration,
      foregroundDecoration: this.foregroundDecoration,
      width: this.width,
      height: this.height,
      constraints: this.constraints,
      margin: this.margin,
      transform: this.transform,
      child: child ?? this.child,
      clipBehavior: this.clipBehavior,
    );
  }
}
