import 'package:flib_builder/src/widget//widget_builder.dart';
import 'package:flutter/material.dart';

class FBSizedBox extends FChildWidgetBuilder {
  double? width;
  double? height;

  @protected
  @override
  Widget buildImpl() {
    return SizedBox(
      key: this.key,
      width: this.width,
      height: this.height,
      child: this.child,
    );
  }
}
