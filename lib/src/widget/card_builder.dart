import 'package:flib_builder/src/widget/widget_builder.dart';
import 'package:flutter/material.dart';

import 'mixins.dart';

class FCardBuilder extends FChildWidgetBuilder with FMixinKeyHolder {
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
    Widget child,
  }) {
    return Card(
      key: this.key,
      child: child ?? childWidget(),
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
