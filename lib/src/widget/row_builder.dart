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
  Widget build({
    Key key,
    MainAxisAlignment mainAxisAlignment,
    MainAxisSize mainAxisSize,
    CrossAxisAlignment crossAxisAlignment,
    TextDirection textDirection,
    VerticalDirection verticalDirection,
    TextBaseline textBaseline,
    List<Widget> children,
  }) {
    return Row(
      key: key ?? this.key,
      mainAxisAlignment: mainAxisAlignment ?? this.mainAxisAlignment,
      mainAxisSize: mainAxisSize ?? this.mainAxisSize,
      crossAxisAlignment: crossAxisAlignment ?? this.crossAxisAlignment,
      textDirection: textDirection ?? this.textDirection,
      verticalDirection: verticalDirection ?? this.verticalDirection,
      textBaseline: textBaseline ?? this.textBaseline,
      children: children ?? this.children,
    );
  }
}
