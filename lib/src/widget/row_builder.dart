import 'package:flib_builder/src/widget/widget_builder.dart';
import 'package:flutter/material.dart';

class FBRow extends FChildrenWidgetBuilder {
  MainAxisAlignment mainAxisAlignment;
  MainAxisSize mainAxisSize;
  CrossAxisAlignment crossAxisAlignment;
  TextDirection? textDirection;
  VerticalDirection verticalDirection;
  TextBaseline? textBaseline;

  FBRow({
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
  });

  @protected
  @override
  Widget buildImpl() {
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
