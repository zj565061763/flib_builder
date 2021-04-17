import 'dart:ui';

import 'package:flib_builder/flib_builder.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';

class FBTextField extends FWidgetBuilder {
  TextEditingController? _controller;
  FocusNode? focusNode;
  InputDecoration? decoration = const InputDecoration();
  TextInputType? keyboardType;
  TextInputAction? textInputAction;
  TextCapitalization textCapitalization = TextCapitalization.none;
  TextStyle? style;
  StrutStyle? strutStyle;
  TextAlign textAlign = TextAlign.start;
  TextAlignVertical? textAlignVertical;
  TextDirection? textDirection;
  bool readOnly = false;
  ToolbarOptions? toolbarOptions;
  bool? showCursor;
  bool autofocus = false;
  String obscuringCharacter = "•";
  bool obscureText = false;
  bool autocorrect = true;
  SmartDashesType? smartDashesType;
  SmartQuotesType? smartQuotesType;
  bool enableSuggestions = true;
  int maxLines = 1;
  int? minLines;
  bool expands = false;
  int? maxLength;
  MaxLengthEnforcement? maxLengthEnforcement;
  ValueChanged<String>? onChanged;
  VoidCallback? onEditingComplete;
  ValueChanged<String>? onSubmitted;
  AppPrivateCommandCallback? onAppPrivateCommand;
  List<TextInputFormatter>? inputFormatters;
  bool? enabled;
  double cursorWidth = 2.0;
  double? cursorHeight;
  Radius? cursorRadius;
  Color? cursorColor;
  BoxHeightStyle selectionHeightStyle = BoxHeightStyle.tight;
  BoxWidthStyle selectionWidthStyle = BoxWidthStyle.tight;
  Brightness? keyboardAppearance;
  EdgeInsets scrollPadding = const EdgeInsets.all(20.0);
  DragStartBehavior dragStartBehavior = DragStartBehavior.start;
  bool enableInteractiveSelection = true;
  TextSelectionControls? selectionControls;
  GestureTapCallback? onTap;
  MouseCursor? mouseCursor;
  InputCounterWidgetBuilder? buildCounter;
  ScrollController? scrollController;
  ScrollPhysics? scrollPhysics;
  Iterable<String>? autofillHints;
  String? restorationId;

  TextEditingController get controller {
    if (_controller == null) {
      _controller = TextEditingController();
    }
    return _controller!;
  }

  set controller(TextEditingController value) {
    _controller = value;
  }

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
      obscuringCharacter: this.obscuringCharacter,
      obscureText: this.obscureText,
      autocorrect: this.autocorrect,
      smartDashesType: this.smartDashesType,
      smartQuotesType: this.smartQuotesType,
      enableSuggestions: this.enableSuggestions,
      maxLines: this.maxLines,
      minLines: this.minLines,
      expands: this.expands,
      maxLength: this.maxLength,
      maxLengthEnforcement: this.maxLengthEnforcement,
      onChanged: this.onChanged,
      onEditingComplete: this.onEditingComplete,
      onSubmitted: this.onSubmitted,
      onAppPrivateCommand: this.onAppPrivateCommand,
      inputFormatters: this.inputFormatters,
      enabled: this.enabled,
      cursorWidth: this.cursorWidth,
      cursorHeight: this.cursorHeight,
      cursorRadius: this.cursorRadius,
      cursorColor: this.cursorColor,
      selectionHeightStyle: this.selectionHeightStyle,
      selectionWidthStyle: this.selectionWidthStyle,
      keyboardAppearance: this.keyboardAppearance,
      scrollPadding: this.scrollPadding,
      dragStartBehavior: this.dragStartBehavior,
      enableInteractiveSelection: this.enableInteractiveSelection,
      selectionControls: this.selectionControls,
      onTap: this.onTap,
      mouseCursor: this.mouseCursor,
      buildCounter: this.buildCounter,
      scrollController: this.scrollController,
      scrollPhysics: this.scrollPhysics,
      autofillHints: this.autofillHints,
      restorationId: this.restorationId,
    );
  }
}
