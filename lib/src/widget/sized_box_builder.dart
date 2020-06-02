import 'package:flib_builder/src/widget//widget_builder.dart';
import 'package:flutter/material.dart';

class FBSizedBox extends FChildWidgetBuilder {
  double width;
  double height;

  FBSizedBox({
    Key key,
    this.width,
    this.height,
    Widget child,
  }) : super(key: key, child: child);

  @override
  Widget build({
    Widget child,
  }) {
    return SizedBox(
      key: this.key,
      width: this.width,
      height: this.height,
      child: child ?? this.child,
    );
  }
}
