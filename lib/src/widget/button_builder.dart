import 'package:flib_builder/src/widget/widget_builder.dart';
import 'package:flutter/material.dart';

abstract class _FBButton extends FChildWidgetBuilder {
  bool extCanPress = true;
  bool extCanLongPress = true;
}

class FBMaterialButton extends _FBButton {
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
  Clip clipBehavior;
  FocusNode focusNode;
  bool autofocus;
  MaterialTapTargetSize materialTapTargetSize;
  Duration animationDuration;
  double minWidth;
  double height;
  bool enableFeedback;

  FBMaterialButton({
    this.onPressed,
    this.onLongPress,
    this.onHighlightChanged,
    this.textTheme,
    this.textColor,
    this.disabledTextColor,
    this.color,
    this.disabledColor,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.colorBrightness,
    this.elevation,
    this.focusElevation,
    this.hoverElevation,
    this.highlightElevation,
    this.disabledElevation,
    this.padding,
    this.visualDensity,
    this.shape,
    this.clipBehavior = Clip.none,
    this.focusNode,
    this.autofocus = false,
    this.materialTapTargetSize,
    this.animationDuration,
    this.minWidth,
    this.height,
    this.enableFeedback = true,
  });

  @protected
  @override
  Widget buildImpl() {
    return MaterialButton(
      key: this.key,
      onPressed: extCanPress ? this.onPressed : null,
      onLongPress: extCanLongPress ? this.onLongPress : null,
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
      child: this.child,
    );
  }
}

class FBFlatButton extends _FBButton {
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
  Clip clipBehavior;
  FocusNode focusNode;
  bool autofocus;
  MaterialTapTargetSize materialTapTargetSize;

  FBFlatButton({
    this.onPressed,
    this.onLongPress,
    this.onHighlightChanged,
    this.textTheme,
    this.textColor,
    this.disabledTextColor,
    this.color,
    this.disabledColor,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.colorBrightness,
    this.padding,
    this.visualDensity,
    this.shape,
    this.clipBehavior = Clip.none,
    this.focusNode,
    this.autofocus = false,
    this.materialTapTargetSize,
  });

  @protected
  @override
  Widget buildImpl() {
    if (textColor != null) {
      if (disabledTextColor == null) {
        disabledTextColor = textColor.withOpacity(0.4);
      }
    }

    return FlatButton(
      key: this.key,
      onPressed: extCanPress ? this.onPressed : null,
      onLongPress: extCanLongPress ? this.onLongPress : null,
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
      child: this.child,
    );
  }
}

class FBRaisedButton extends _FBButton {
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
  Clip clipBehavior;
  FocusNode focusNode;
  bool autofocus;
  MaterialTapTargetSize materialTapTargetSize;
  Duration animationDuration;

  FBRaisedButton({
    this.onPressed,
    this.onLongPress,
    this.onHighlightChanged,
    this.textTheme,
    this.textColor,
    this.disabledTextColor,
    this.color,
    this.disabledColor,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.colorBrightness,
    this.elevation,
    this.focusElevation,
    this.hoverElevation,
    this.highlightElevation,
    this.disabledElevation,
    this.padding,
    this.visualDensity,
    this.shape,
    this.clipBehavior = Clip.none,
    this.focusNode,
    this.autofocus = false,
    this.materialTapTargetSize,
    this.animationDuration,
  });

  @protected
  @override
  Widget buildImpl() {
    if (color != null) {
      if (disabledColor == null) {
        disabledColor = color.withOpacity(0.4);
      }

      if (colorBrightness == null) {
        colorBrightness = ThemeData.estimateBrightnessForColor(color);
      }

      if (colorBrightness == Brightness.dark) {
        if (textColor == null) {
          textColor = Colors.white;
        }

        if (disabledTextColor == null) {
          disabledTextColor = Colors.white;
        }
      }
    }

    return RaisedButton(
      key: this.key,
      onPressed: extCanPress ? this.onPressed : null,
      onLongPress: extCanLongPress ? this.onLongPress : null,
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
      child: this.child,
    );
  }
}

class FBOutlineButton extends _FBButton {
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
  Clip clipBehavior;
  FocusNode focusNode;
  bool autofocus;

  FBOutlineButton({
    this.onPressed,
    this.onLongPress,
    this.textTheme,
    this.textColor,
    this.disabledTextColor,
    this.color,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.highlightElevation,
    this.borderSide,
    this.disabledBorderColor,
    this.highlightedBorderColor,
    this.padding,
    this.visualDensity,
    this.shape,
    this.clipBehavior = Clip.none,
    this.focusNode,
    this.autofocus = false,
  });

  @protected
  @override
  Widget buildImpl() {
    if (textColor != null) {
      if (disabledTextColor == null) {
        disabledTextColor = textColor.withOpacity(0.4);
      }

      if (borderSide == null) {
        borderSide = BorderSide(
          color: textColor,
          width: 1,
        );
      }

      if (disabledBorderColor == null) {
        disabledBorderColor = textColor.withOpacity(0.4);
      }

      if (highlightedBorderColor == null) {
        highlightedBorderColor = textColor;
      }
    }

    return OutlineButton(
      key: this.key,
      onPressed: extCanPress ? this.onPressed : null,
      onLongPress: extCanLongPress ? this.onLongPress : null,
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
