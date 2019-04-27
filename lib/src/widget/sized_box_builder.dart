import 'package:flib_builder/src/builder.dart';
import 'package:flutter/material.dart';

class FSizedBoxBuilder extends FChildWidgetBuilder {
  double width;
  double height;

  @override
  Widget build({
    Key key,
    double width,
    double height,
    Widget child,
  }) {
    return SizedBox(
      key: key ?? this.key,
      width: width ?? this.width,
      height: height ?? this.height,
      child: child ?? this.child,
    );
  }
}
