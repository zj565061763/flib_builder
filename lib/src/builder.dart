import 'package:flutter/material.dart';

abstract class FWidgetBuilder {
  Key key;

  Widget build();
}

abstract class FChildWidgetBuilder extends FWidgetBuilder {
  Widget child;
}
