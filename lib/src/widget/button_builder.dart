import 'package:flib_builder/src/widget/widget_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

abstract class _FBButton extends FChildWidgetBuilder {
  bool extCanPress = true;
  bool extCanLongPress = true;
}

class FBMaterialButton extends _FBButton {
  VoidCallback? onPressed;
  VoidCallback? onLongPress;
  ValueChanged<bool>? onHighlightChanged;
  MouseCursor? mouseCursor;
  ButtonTextTheme? textTheme;
  Color? textColor;
  Color? disabledTextColor;
  Color? color;
  Color? disabledColor;
  Color? focusColor;
  Color? hoverColor;
  Color? highlightColor;
  Color? splashColor;
  Brightness? colorBrightness;
  double? elevation;
  double? focusElevation;
  double? hoverElevation;
  double? highlightElevation;
  double? disabledElevation;
  EdgeInsetsGeometry? padding;
  VisualDensity? visualDensity;
  ShapeBorder? shape;
  Clip clipBehavior = Clip.none;
  FocusNode? focusNode;
  bool autofocus = false;
  MaterialTapTargetSize? materialTapTargetSize;
  Duration? animationDuration;
  double? minWidth;
  double? height;
  bool enableFeedback = true;

  @protected
  @override
  Widget buildImpl() {
    return MaterialButton(
      key: this.key,
      onPressed: extCanPress ? this.onPressed : null,
      onLongPress: extCanLongPress ? this.onLongPress : null,
      onHighlightChanged: this.onHighlightChanged,
      mouseCursor: this.mouseCursor,
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
      child: this.child,
    );
  }
}

class FBTextButton extends _FBButton {
  VoidCallback? onPressed;
  VoidCallback? onLongPress;
  ButtonStyle? style;
  FocusNode? focusNode;
  bool autofocus = false;
  Clip clipBehavior = Clip.none;

  @protected
  @override
  Widget buildImpl() {
    return TextButton(
      key: this.key,
      onPressed: extCanPress ? this.onPressed : null,
      onLongPress: extCanLongPress ? this.onLongPress : null,
      style: this.style,
      focusNode: this.focusNode,
      autofocus: this.autofocus,
      clipBehavior: this.clipBehavior,
      child: this.child ?? Text(""),
    );
  }
}

class FBElevatedButton extends _FBButton {
  VoidCallback? onPressed;
  VoidCallback? onLongPress;
  ButtonStyle? style;
  FocusNode? focusNode;
  bool autofocus = false;
  Clip clipBehavior = Clip.none;

  @protected
  @override
  Widget buildImpl() {
    return ElevatedButton(
      key: this.key,
      onPressed: extCanPress ? this.onPressed : null,
      onLongPress: extCanLongPress ? this.onLongPress : null,
      style: this.style,
      focusNode: this.focusNode,
      autofocus: this.autofocus,
      clipBehavior: this.clipBehavior,
      child: this.child,
    );
  }
}

class FBOutlineButton extends _FBButton {
  VoidCallback? onPressed;
  VoidCallback? onLongPress;
  ButtonStyle? style;
  FocusNode? focusNode;
  bool autofocus = false;
  Clip clipBehavior = Clip.none;

  @protected
  @override
  Widget buildImpl() {
    return OutlinedButton(
      key: this.key,
      onPressed: this.extCanPress ? this.onPressed : null,
      onLongPress: this.extCanLongPress ? this.onLongPress : null,
      style: this.style,
      focusNode: this.focusNode,
      autofocus: this.autofocus,
      clipBehavior: this.clipBehavior,
      child: this.child ?? Text(""),
    );
  }
}
