import 'package:flib_builder/src/widget_builder.dart';
import 'package:flutter/material.dart';

import 'mixins.dart';

class FTextBuilder extends FWidgetBuilder with FMixinKeyHolder {
  String data;
  TextStyle style;
  StrutStyle strutStyle;
  TextAlign textAlign;
  TextDirection textDirection;
  Locale locale;
  bool softWrap;
  TextOverflow overflow;
  double textScaleFactor;
  int maxLines;
  String semanticsLabel;
  TextWidthBasis textWidthBasis;
  TextHeightBehavior textHeightBehavior;

  @override
  Widget build() {
    return Text(
      this.data ?? '',
      key: this.key,
      style: this.style,
      strutStyle: this.strutStyle,
      textAlign: this.textAlign,
      textDirection: this.textDirection,
      locale: this.locale,
      softWrap: this.softWrap,
      overflow: this.overflow,
      textScaleFactor: this.textScaleFactor,
      maxLines: this.maxLines,
      semanticsLabel: this.semanticsLabel,
      textWidthBasis: this.textWidthBasis,
      textHeightBehavior: this.textHeightBehavior,
    );
  }
}

class FRichTextBuilder extends FWidgetBuilder with FMixinKeyHolder {
  TextSpan text;
  TextAlign textAlign = TextAlign.start;
  TextDirection textDirection;
  bool softWrap = true;
  TextOverflow overflow = TextOverflow.clip;
  double textScaleFactor = 1.0;
  int maxLines;
  Locale locale;
  StrutStyle strutStyle;
  TextWidthBasis textWidthBasis = TextWidthBasis.parent;
  TextHeightBehavior textHeightBehavior;

  @override
  Widget build() {
    return RichText(
      key: this.key,
      text: this.text ?? TextSpan(text: ''),
      textAlign: this.textAlign,
      textDirection: this.textDirection,
      softWrap: this.softWrap,
      overflow: this.overflow,
      textScaleFactor: this.textScaleFactor,
      maxLines: this.maxLines,
      locale: this.locale,
      strutStyle: this.strutStyle,
      textWidthBasis: this.textWidthBasis,
      textHeightBehavior: this.textHeightBehavior,
    );
  }
}
