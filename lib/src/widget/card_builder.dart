import 'package:flib_builder/src/widget/widget_builder.dart';
import 'package:flutter/material.dart';

class FBCard extends FChildWidgetBuilder {
  Color? color;
  Color? shadowColor;
  double? elevation;
  ShapeBorder? shape;
  bool borderOnForeground = true;
  EdgeInsetsGeometry? margin;
  Clip? clipBehavior;
  bool semanticContainer = true;

  @protected
  @override
  Widget buildImpl() {
    return Card(
      key: this.key,
      child: this.child,
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
