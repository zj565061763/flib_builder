import 'package:flib_builder/src/builder.dart';
import 'package:flutter/material.dart';

class FStackBuilder extends FWidgetBuilder
    with FMixinKeyHolder, FMixinChildrenHolder {
  AlignmentDirectional alignment;
  TextDirection textDirection;
  StackFit fit;
  Overflow overflow;

  FStackBuilder({
    Key key,
    this.alignment = AlignmentDirectional.topStart,
    this.textDirection,
    this.fit = StackFit.loose,
    this.overflow = Overflow.clip,
    List<Widget> children = const <Widget>[],
  }) {
    this.key = key;
    this.children = children;
  }

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
