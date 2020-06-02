import 'package:flib_builder/src/widget/widget_builder.dart';
import 'package:flutter/material.dart';

class FBText extends FWidgetBuilder {
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

  FBText(
    this.data, {
    Key key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
  }) : super(key: key);

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

class FBRichText extends FWidgetBuilder {
  TextSpan text;
  TextAlign textAlign;
  TextDirection textDirection;
  bool softWrap = true;
  TextOverflow overflow;
  double textScaleFactor;
  int maxLines;
  Locale locale;
  StrutStyle strutStyle;
  TextWidthBasis textWidthBasis;
  TextHeightBehavior textHeightBehavior;

  FBRichText({
    Key key,
    @required this.text,
    this.textAlign = TextAlign.start,
    this.textDirection,
    this.softWrap = true,
    this.overflow = TextOverflow.clip,
    this.textScaleFactor = 1.0,
    this.maxLines,
    this.locale,
    this.strutStyle,
    this.textWidthBasis = TextWidthBasis.parent,
    this.textHeightBehavior,
  }) : super(key: key);

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
