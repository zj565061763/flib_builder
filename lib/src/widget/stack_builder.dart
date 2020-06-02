import 'package:flib_builder/src/builder.dart';
import 'package:flutter/material.dart';

import 'mixins.dart';

class FStackBuilder extends FWidgetBuilder
    with FMixinKeyHolder, FMixinChildrenHolder {
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
      children: children ?? this.children,
    );
  }
}
