import 'package:flib_builder/src/builder.dart';
import 'package:flutter/material.dart';

import 'mixins.dart';

class FMaterialButtonBuilder extends FWidgetBuilder
    with FMixinKeyHolder, FMixinChildHolder {
  VoidCallback onPressed;
  VoidCallback onLongPress;
  ValueChanged<bool> onHighlightChanged;
  ButtonTextTheme textTheme;
  Color textColor;
  Color disabledTextColor;
  Color color;
  Color disabledColor;
  Color focusColor;
  Color hoverColor;
  Color highlightColor;
  Color splashColor;
  Brightness colorBrightness;
  double elevation;
  double focusElevation;
  double hoverElevation;
  double highlightElevation;
  double disabledElevation;
  EdgeInsetsGeometry padding;
  VisualDensity visualDensity;
  ShapeBorder shape;
  Clip clipBehavior = Clip.none;
  FocusNode focusNode;
  bool autofocus = false;
  MaterialTapTargetSize materialTapTargetSize;
  Duration animationDuration;
  double minWidth;
  double height;
  bool enableFeedback = true;

  @override
  Widget build({
    Widget child,
  }) {
    return MaterialButton(
      key: this.key,
      onPressed: this.onPressed,
      onLongPress: this.onLongPress,
      onHighlightChanged: this.onHighlightChanged,
      textTheme: this.textTheme,
      textColor: this.textColor,
      disabledTextColor: this.disabledTextColor,
      color: this.color,
      disabledColor: this.disabledColor,
      focusColor: this.focusColor,
      hoverColor: this.hoverColor,
      highlightColor: this.highlightColor,
      splashColor: this.splashColor,
      colorBrightness: this.colorBrightness,
      elevation: this.elevation,
      focusElevation: this.focusElevation,
      hoverElevation: this.hoverElevation,
      highlightElevation: this.highlightElevation,
      disabledElevation: this.disabledElevation,
      padding: this.padding,
      visualDensity: this.visualDensity,
      shape: this.shape,
      clipBehavior: this.clipBehavior,
      focusNode: this.focusNode,
      autofocus: this.autofocus,
      materialTapTargetSize: this.materialTapTargetSize,
      animationDuration: this.animationDuration,
      minWidth: this.minWidth,
      height: this.height,
      enableFeedback: this.enableFeedback,
      child: child ?? this.child,
    );
  }
}

class FFlatButtonBuilder extends FWidgetBuilder
    with FMixinKeyHolder, FMixinChildHolder {
  VoidCallback onPressed;
  VoidCallback onLongPress;
  ValueChanged<bool> onHighlightChanged;
  ButtonTextTheme textTheme;
  Color textColor;
  Color disabledTextColor;
  Color color;
  Color disabledColor;
  Color focusColor;
  Color hoverColor;
  Color highlightColor;
  Color splashColor;
  Brightness colorBrightness;
  EdgeInsetsGeometry padding;
  VisualDensity visualDensity;
  ShapeBorder shape;
  Clip clipBehavior = Clip.none;
  FocusNode focusNode;
  bool autofocus = false;
  MaterialTapTargetSize materialTapTargetSize;

  @override
  Widget build({
    Widget child,
  }) {
    return FlatButton(
      key: this.key,
      onPressed: this.onPressed,
      onLongPress: this.onLongPress,
      onHighlightChanged: this.onHighlightChanged,
      textTheme: this.textTheme,
      textColor: this.textColor,
      disabledTextColor: this.disabledTextColor,
      color: this.color,
      disabledColor: this.disabledColor,
      focusColor: this.focusColor,
      hoverColor: this.hoverColor,
      highlightColor: this.highlightColor,
      splashColor: this.splashColor,
      colorBrightness: this.colorBrightness,
      padding: this.padding,
      visualDensity: this.visualDensity,
      shape: this.shape,
      clipBehavior: this.clipBehavior,
      focusNode: this.focusNode,
      autofocus: this.autofocus,
      materialTapTargetSize: this.materialTapTargetSize,
      child: child ?? this.child,
    );
  }
}

class FRaisedButtonBuilder extends FWidgetBuilder
    with FMixinKeyHolder, FMixinChildHolder {
  VoidCallback onPressed;
  VoidCallback onLongPress;
  ValueChanged<bool> onHighlightChanged;
  ButtonTextTheme textTheme;
  Color textColor;
  Color disabledTextColor;
  Color color;
  Color disabledColor;
  Color focusColor;
  Color hoverColor;
  Color highlightColor;
  Color splashColor;
  Brightness colorBrightness;
  double elevation;
  double focusElevation;
  double hoverElevation;
  double highlightElevation;
  double disabledElevation;
  EdgeInsetsGeometry padding;
  VisualDensity visualDensity;
  ShapeBorder shape;
  Clip clipBehavior = Clip.none;
  FocusNode focusNode;
  bool autofocus = false;
  MaterialTapTargetSize materialTapTargetSize;
  Duration animationDuration;

  @override
  Widget build({
    Widget child,
  }) {
    return RaisedButton(
      key: this.key,
      onPressed: this.onPressed,
      onLongPress: this.onLongPress,
      onHighlightChanged: this.onHighlightChanged,
      textTheme: this.textTheme,
      textColor: this.textColor,
      disabledTextColor: this.disabledTextColor,
      color: this.color,
      disabledColor: this.disabledColor,
      focusColor: this.focusColor,
      hoverColor: this.hoverColor,
      highlightColor: this.highlightColor,
      splashColor: this.splashColor,
      colorBrightness: this.colorBrightness,
      elevation: this.elevation,
      focusElevation: this.focusElevation,
      hoverElevation: this.hoverElevation,
      highlightElevation: this.highlightElevation,
      disabledElevation: this.disabledElevation,
      padding: this.padding,
      visualDensity: this.visualDensity,
      shape: this.shape,
      clipBehavior: this.clipBehavior,
      focusNode: this.focusNode,
      autofocus: this.autofocus,
      materialTapTargetSize: this.materialTapTargetSize,
      animationDuration: this.animationDuration,
      child: child ?? this.child,
    );
  }
}

class FOutlineButtonBuilder extends FWidgetBuilder
    with FMixinKeyHolder, FMixinChildHolder {
  VoidCallback onPressed;
  VoidCallback onLongPress;
  ButtonTextTheme textTheme;
  Color textColor;
  Color disabledTextColor;
  Color color;
  Color focusColor;
  Color hoverColor;
  Color highlightColor;
  Color splashColor;
  double highlightElevation;
  BorderSide borderSide;
  Color disabledBorderColor;
  Color highlightedBorderColor;
  EdgeInsetsGeometry padding;
  VisualDensity visualDensity;
  ShapeBorder shape;
  Clip clipBehavior = Clip.none;
  FocusNode focusNode;
  bool autofocus = false;

  @override
  Widget build({
    Widget child,
  }) {
    return OutlineButton(
      key: this.key,
      onPressed: this.onPressed,
      onLongPress: this.onLongPress,
      textTheme: this.textTheme,
      textColor: this.textColor,
      disabledTextColor: this.disabledTextColor,
      color: this.color,
      focusColor: this.focusColor,
      hoverColor: this.hoverColor,
      highlightColor: this.highlightColor,
      splashColor: this.splashColor,
      highlightElevation: this.highlightElevation,
      borderSide: this.borderSide,
      disabledBorderColor: this.disabledBorderColor,
      highlightedBorderColor: this.highlightedBorderColor,
      padding: this.padding,
      visualDensity: this.visualDensity,
      shape: this.shape,
      clipBehavior: this.clipBehavior,
      focusNode: this.focusNode,
      autofocus: this.autofocus,
      child: child ?? this.child,
    );
  }
}
