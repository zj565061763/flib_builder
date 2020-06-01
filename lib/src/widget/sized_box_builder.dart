import 'package:flib_builder/src/builder.dart';
import 'package:flutter/material.dart';

class FSizedBoxBuilder extends FWidgetBuilder
    with FMixinKeyHolder, FMixinChildHolder {
  double width;
  double height;

  @override
  Widget build() {
    return SizedBox(
      key: this.key,
      width: this.width,
      height: this.height,
      child: this.child,
    );
  }
}
