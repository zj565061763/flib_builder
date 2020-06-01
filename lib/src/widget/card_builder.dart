import 'package:flib_builder/src/builder.dart';
import 'package:flutter/material.dart';

class FCardBuilder extends FWidgetBuilder
    with FMixinKeyHolder, FMixinChildHolder {
  Color color;
  Color shadowColor;
  double elevation;
  ShapeBorder shape;
  bool borderOnForeground = true;
  EdgeInsetsGeometry margin;
  Clip clipBehavior;
  bool semanticContainer = true;

  @override
  Widget build({
    Key key,
    Widget child,
    Color color,
    double elevation,
    ShapeBorder shape,
    bool borderOnForeground,
    EdgeInsetsGeometry margin,
    Clip clipBehavior,
    bool semanticContainer,
  }) {
    return Card(
      key: key ?? this.key,
      child: child ?? this.child,
      color: color ?? this.color,
      elevation: elevation ?? this.elevation,
      shape: shape ?? this.shape,
      borderOnForeground: borderOnForeground ?? this.borderOnForeground,
      margin: margin ?? this.margin,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      semanticContainer: semanticContainer ?? this.semanticContainer,
    );
  }
}
