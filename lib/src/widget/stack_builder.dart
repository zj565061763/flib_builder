import 'package:flib_builder/src/widget//widget_builder.dart';
import 'package:flutter/material.dart';

class FBStack extends FChildrenWidgetBuilder {
  AlignmentDirectional alignment = AlignmentDirectional.topStart;
  TextDirection? textDirection;
  StackFit fit = StackFit.loose;
  Clip clipBehavior = Clip.hardEdge;

  @protected
  @override
  Widget buildImpl() {
    return Stack(
      key: this.key,
      alignment: this.alignment,
      textDirection: this.textDirection,
      fit: this.fit,
      clipBehavior: this.clipBehavior,
      children: this.children,
    );
  }
}
