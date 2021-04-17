import 'package:flib_builder/src/widget/widget_builder.dart';
import 'package:flutter/material.dart';

class FBText extends FWidgetBuilder {
  String data = "";
  TextStyle? style;
  StrutStyle? strutStyle;
  TextAlign? textAlign;
  TextDirection? textDirection;
  Locale? locale;
  bool? softWrap;
  TextOverflow? overflow;
  double? textScaleFactor;
  int? maxLines;
  String? semanticsLabel;
  TextWidthBasis? textWidthBasis;
  TextHeightBehavior? textHeightBehavior;

  @protected
  @override
  Widget buildImpl() {
    return Text(
      this.data,
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
  InlineSpan text = TextSpan(text: "");
  TextAlign textAlign = TextAlign.start;
  TextDirection? textDirection;
  bool softWrap = true;
  TextOverflow overflow = TextOverflow.clip;
  double textScaleFactor = 1.0;
  int? maxLines;
  Locale? locale;
  StrutStyle? strutStyle;
  TextWidthBasis textWidthBasis = TextWidthBasis.parent;
  TextHeightBehavior? textHeightBehavior;

  @protected
  @override
  Widget buildImpl() {
    return RichText(
      key: this.key,
      text: this.text,
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
