import 'package:flib_builder/src/builder.dart';
import 'package:flutter/material.dart';

class FStackBuilder extends FWidgetBuilder
    with FMixinKeyHolder, FMixinChildrenHolder {
  AlignmentDirectional alignment = AlignmentDirectional.topStart;
  TextDirection textDirection;
  StackFit fit = StackFit.loose;
  Overflow overflow = Overflow.clip;

  @override
  Widget build({
    Key key,
    AlignmentDirectional alignment,
    TextDirection textDirection,
    StackFit fit,
    Overflow overflow,
    List<Widget> children,
  }) {
    return Stack(
      key: key ?? this.key,
      alignment: alignment ?? this.alignment,
      textDirection: textDirection ?? this.textDirection,
      fit: fit ?? this.fit,
      overflow: overflow ?? this.overflow,
      children: children ?? this.children,
    );
  }
}
