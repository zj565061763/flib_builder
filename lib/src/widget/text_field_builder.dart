import 'dart:ui';

import 'package:flib_builder/flib_builder.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';

class FBTextField extends FWidgetBuilder {
  TextEditingController controller;
  FocusNode focusNode;
  InputDecoration decoration;
  TextInputType keyboardType;
  TextInputAction textInputAction;
  TextCapitalization textCapitalization;
  TextStyle style;
  StrutStyle strutStyle;
  TextAlign textAlign;
  TextAlignVertical textAlignVertical;
  TextDirection textDirection;
  bool readOnly;
  ToolbarOptions toolbarOptions;
  bool showCursor;
  bool autofocus;
  bool obscureText;
  bool autocorrect;
  SmartDashesType smartDashesType;
  SmartQuotesType smartQuotesType;
  bool enableSuggestions;
  int maxLines;
  int minLines;
  bool expands;
  int maxLength;
  bool maxLengthEnforced;
  ValueChanged<String> onChanged;
  VoidCallback onEditingComplete;
  ValueChanged<String> onSubmitted;
  List<TextInputFormatter> inputFormatters;
  bool enabled;
  double cursorWidth;
  Radius cursorRadius;
  Color cursorColor;
  BoxHeightStyle selectionHeightStyle;
  BoxWidthStyle selectionWidthStyle;
  Brightness keyboardAppearance;
  EdgeInsets scrollPadding;
  DragStartBehavior dragStartBehavior;
  bool enableInteractiveSelection;
  GestureTapCallback onTap;
  InputCounterWidgetBuilder buildCounter;
  ScrollController scrollController;
  ScrollPhysics scrollPhysics;

  FBTextField({
    Key key,
    this.controller,
    this.focusNode,
    this.decoration = const InputDecoration(),
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.strutStyle,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textDirection,
    this.readOnly = false,
    this.toolbarOptions,
    this.showCursor,
    this.autofocus = false,
    this.obscureText = false,
    this.autocorrect = true,
    this.smartDashesType,
    this.smartQuotesType,
    this.enableSuggestions = true,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.maxLengthEnforced = true,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.inputFormatters,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorRadius,
    this.cursorColor,
    this.selectionHeightStyle = BoxHeightStyle.tight,
    this.selectionWidthStyle = BoxWidthStyle.tight,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.dragStartBehavior = DragStartBehavior.start,
    this.enableInteractiveSelection = true,
    this.onTap,
    this.buildCounter,
    this.scrollController,
    this.scrollPhysics,
  }) : super(key: key);

  @protected
  @override
  Widget buildImpl() {
    return TextField(
      key: this.key,
      controller: this.controller,
      focusNode: this.focusNode,
      decoration: this.decoration,
      keyboardType: this.keyboardType,
      textInputAction: this.textInputAction,
      textCapitalization: this.textCapitalization,
      style: this.style,
      strutStyle: this.strutStyle,
      textAlign: this.textAlign,
      textAlignVertical: this.textAlignVertical,
      textDirection: this.textDirection,
      readOnly: this.readOnly,
      toolbarOptions: this.toolbarOptions,
      showCursor: this.showCursor,
      autofocus: this.autofocus,
      obscureText: this.obscureText,
      autocorrect: this.autocorrect,
      smartDashesType: this.smartDashesType,
      smartQuotesType: this.smartQuotesType,
      enableSuggestions: this.enableSuggestions,
      maxLines: this.maxLines,
      minLines: this.minLines,
      expands: this.expands,
      maxLength: this.maxLength,
      maxLengthEnforced: this.maxLengthEnforced,
      onChanged: this.onChanged,
      onEditingComplete: this.onEditingComplete,
      onSubmitted: this.onSubmitted,
      inputFormatters: this.inputFormatters,
      enabled: this.enabled,
      cursorWidth: this.cursorWidth,
      cursorRadius: this.cursorRadius,
      cursorColor: this.cursorColor,
      selectionHeightStyle: this.selectionHeightStyle,
      selectionWidthStyle: this.selectionWidthStyle,
      keyboardAppearance: this.keyboardAppearance,
      scrollPadding: this.scrollPadding,
      dragStartBehavior: this.dragStartBehavior,
      enableInteractiveSelection: this.enableInteractiveSelection,
      onTap: this.onTap,
      buildCounter: this.buildCounter,
      scrollController: this.scrollController,
      scrollPhysics: this.scrollPhysics,
    );
  }
}
