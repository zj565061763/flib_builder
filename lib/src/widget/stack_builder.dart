import 'package:flib_builder/src/widget//widget_builder.dart';
import 'package:flutter/material.dart';

import 'mixins.dart';

class FBStack extends FChildrenWidgetBuilder with FMixinKeyHolder {
  AlignmentDirectional alignment = AlignmentDirectional.topStart;
  TextDirection textDirection;
  StackFit fit = StackFit.loose;
  Overflow overflow = Overflow.clip;

  @override
  Widget build({
    List<Widget> children,
  }) {
    return Stack(
      key: this.key,
      alignment: this.alignment,
      textDirection: this.textDirection,
      fit: this.fit,
      overflow: this.overflow,
      children: children ?? childrenWidget(),
    );
  }
}
