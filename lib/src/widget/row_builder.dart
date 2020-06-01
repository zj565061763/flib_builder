import 'package:flib_builder/src/builder.dart';
import 'package:flutter/material.dart';

class FRowBuilder extends FWidgetBuilder
    with FMixinKeyHolder, FMixinChildrenHolder {
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start;
  MainAxisSize mainAxisSize = MainAxisSize.max;
  CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center;
  TextDirection textDirection;
  VerticalDirection verticalDirection = VerticalDirection.down;
  TextBaseline textBaseline;

  @override
  Widget build() {
    return Row(
      key: this.key,
      mainAxisAlignment: this.mainAxisAlignment,
      mainAxisSize: this.mainAxisSize,
      crossAxisAlignment: this.crossAxisAlignment,
      textDirection: this.textDirection,
      verticalDirection: this.verticalDirection,
      textBaseline: this.textBaseline,
      children: this.children,
    );
  }
}
