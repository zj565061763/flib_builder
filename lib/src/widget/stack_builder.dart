import 'package:flib_builder/src/widget//widget_builder.dart';
import 'package:flutter/material.dart';

class FBStack extends FChildrenWidgetBuilder {
  AlignmentDirectional alignment;
  TextDirection textDirection;
  StackFit fit;
  Overflow overflow;

  FBStack({
    this.alignment = AlignmentDirectional.topStart,
    this.textDirection,
    this.fit = StackFit.loose,
    this.overflow = Overflow.clip,
  });

  @protected
  @override
  Widget buildImpl() {
    return Stack(
      key: this.key,
      alignment: this.alignment,
      textDirection: this.textDirection,
      fit: this.fit,
      overflow: this.overflow,
      children: this.children,
    );
  }
}
