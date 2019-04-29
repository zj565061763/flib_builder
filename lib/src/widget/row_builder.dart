import 'package:flib_builder/src/builder.dart';
import 'package:flutter/material.dart';

class FRowBuilder extends FWidgetBuilder
    with FMixinKeyHolder, FMixinChildrenHolder {
  MainAxisAlignment mainAxisAlignment;
  MainAxisSize mainAxisSize;
  CrossAxisAlignment crossAxisAlignment;
  TextDirection textDirection;
  VerticalDirection verticalDirection;
  TextBaseline textBaseline;

  FRowBuilder({
    Key key,
    List<Widget> children,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
  }) {
    this.key = key;
    this.children = children ?? [];
  }

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
