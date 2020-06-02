import 'package:flib_builder/src/widget/widget_builder.dart';
import 'package:flutter/material.dart';

class FBCard extends FChildWidgetBuilder {
  Color color;
  Color shadowColor;
  double elevation;
  ShapeBorder shape;
  bool borderOnForeground;
  EdgeInsetsGeometry margin;
  Clip clipBehavior;
  bool semanticContainer;

  FBCard({
    Key key,
    this.color,
    this.shadowColor,
    this.elevation,
    this.shape,
    this.borderOnForeground = true,
    this.margin,
    this.clipBehavior,
    Widget child,
    this.semanticContainer = true,
  }) : super(key: key, child: child);

  @override
  Widget build({
    Widget child,
  }) {
    return Card(
      key: this.key,
      child: child ?? this.child,
      color: this.color,
      elevation: this.elevation,
      shape: this.shape,
      borderOnForeground: this.borderOnForeground,
      margin: this.margin,
      clipBehavior: this.clipBehavior,
      semanticContainer: this.semanticContainer,
    );
  }
}
