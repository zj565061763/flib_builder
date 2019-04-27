import 'package:flib_builder/src/builder.dart';
import 'package:flutter/material.dart';

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

  FTextBuilder({
    Key key,
    this.data,
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
  }) {
    this.key = key;
  }

  @override
  Widget build({
    @required String data,
    Key key,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    TextOverflow overflow,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
  }) {
    return Text(
      data ?? this.data ?? '',
      key: key ?? this.key,
      style: style ?? this.style,
      strutStyle: strutStyle ?? this.strutStyle,
      textAlign: textAlign ?? this.textAlign,
      textDirection: textDirection ?? this.textDirection,
      locale: locale ?? this.locale,
      softWrap: softWrap ?? this.softWrap,
      overflow: overflow ?? this.overflow,
      textScaleFactor: textScaleFactor ?? this.textScaleFactor,
      maxLines: maxLines ?? this.maxLines,
      semanticsLabel: semanticsLabel ?? this.semanticsLabel,
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

  @override
  Widget build({
    @required TextSpan text,
    Key key,
    TextAlign textAlign,
    TextDirection textDirection,
    bool softWrap,
    TextOverflow overflow,
    double textScaleFactor,
    int maxLines,
    Locale locale,
    StrutStyle strutStyle,
  }) {
    return RichText(
      key: key ?? this.key,
      text: text ?? this.text ?? TextSpan(text: ''),
      textAlign: textAlign ?? this.textAlign,
      textDirection: textDirection ?? this.textDirection,
      softWrap: softWrap ?? this.softWrap,
      textScaleFactor: textScaleFactor ?? this.textScaleFactor,
      maxLines: maxLines ?? this.maxLines,
      locale: locale ?? this.locale,
      strutStyle: strutStyle ?? this.strutStyle,
    );
  }
}
