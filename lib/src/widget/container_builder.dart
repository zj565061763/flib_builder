import 'package:flib_builder/src/widget/widget_builder.dart';
import 'package:flutter/material.dart';

class FBContainer extends FChildWidgetBuilder {
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

  FBContainer({
    this.alignment,
    this.padding,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.width,
    this.height,
    this.constraints,
    this.margin,
    this.transform,
    this.clipBehavior = Clip.none,
  });

  @protected
  @override
  Widget buildImpl() {
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
      child: this.child,
      clipBehavior: this.clipBehavior,
    );
  }
}
