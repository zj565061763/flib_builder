import 'package:flib_builder/src/builder.dart';
import 'package:flutter/material.dart';

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

  FContainerBuilder({
    Key key,
    Widget child,
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
  }) {
    this.key = key;
    this.child = child;
  }

  @override
  Widget build({
    Key key,
    AlignmentGeometry alignment,
    EdgeInsetsGeometry padding,
    Color color,
    Decoration decoration,
    Decoration foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    EdgeInsetsGeometry margin,
    Matrix4 transform,
    Widget child,
  }) {
    return Container(
      key: key ?? this.key,
      alignment: alignment ?? this.alignment,
      padding: padding ?? this.padding,
      color: color ?? this.color,
      decoration: decoration ?? this.decoration,
      foregroundDecoration: foregroundDecoration ?? this.foregroundDecoration,
      width: width ?? this.width,
      height: height ?? this.height,
      constraints: constraints ?? this.constraints,
      margin: margin ?? this.margin,
      transform: transform ?? this.transform,
      child: child ?? this.child,
    );
  }
}
