import 'package:flib_builder/src/builder.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FGestureDetectorBuilder extends FWidgetBuilder
    with FMixinKeyHolder, FMixinChildHolder {
  GestureTapDownCallback onTapDown;
  GestureTapUpCallback onTapUp;
  GestureTapCallback onTap;
  GestureTapCancelCallback onTapCancel;

  GestureTapCallback onDoubleTap;

  GestureLongPressCallback onLongPress;
  GestureLongPressUpCallback onLongPressUp;
  GestureLongPressDragStartCallback onLongPressDragStart;
  GestureLongPressDragUpdateCallback onLongPressDragUpdate;
  GestureLongPressDragUpCallback onLongPressDragUp;

  GestureDragDownCallback onVerticalDragDown;
  GestureDragStartCallback onVerticalDragStart;
  GestureDragUpdateCallback onVerticalDragUpdate;
  GestureDragEndCallback onVerticalDragEnd;
  GestureDragCancelCallback onVerticalDragCancel;

  GestureDragDownCallback onHorizontalDragDown;
  GestureDragStartCallback onHorizontalDragStart;
  GestureDragUpdateCallback onHorizontalDragUpdate;
  GestureDragEndCallback onHorizontalDragEnd;
  GestureDragCancelCallback onHorizontalDragCancel;

  GestureForcePressStartCallback onForcePressStart;
  GestureForcePressPeakCallback onForcePressPeak;
  GestureForcePressUpdateCallback onForcePressUpdate;
  GestureForcePressEndCallback onForcePressEnd;

  GestureDragDownCallback onPanDown;
  GestureDragStartCallback onPanStart;
  GestureDragUpdateCallback onPanUpdate;
  GestureDragEndCallback onPanEnd;
  GestureDragCancelCallback onPanCancel;

  GestureScaleStartCallback onScaleStart;
  GestureScaleUpdateCallback onScaleUpdate;
  GestureScaleEndCallback onScaleEnd;

  HitTestBehavior behavior;
  bool excludeFromSemantics;
  DragStartBehavior dragStartBehavior;

  FGestureDetectorBuilder({
    Key key,
    Widget child,
    this.onTapDown,
    this.onTapUp,
    this.onTap,
    this.onTapCancel,
    this.onDoubleTap,
    this.onLongPress,
    this.onLongPressUp,
    this.onLongPressDragStart,
    this.onLongPressDragUpdate,
    this.onLongPressDragUp,
    this.onVerticalDragDown,
    this.onVerticalDragStart,
    this.onVerticalDragUpdate,
    this.onVerticalDragEnd,
    this.onVerticalDragCancel,
    this.onHorizontalDragDown,
    this.onHorizontalDragStart,
    this.onHorizontalDragUpdate,
    this.onHorizontalDragEnd,
    this.onHorizontalDragCancel,
    this.onForcePressStart,
    this.onForcePressPeak,
    this.onForcePressUpdate,
    this.onForcePressEnd,
    this.onPanDown,
    this.onPanStart,
    this.onPanUpdate,
    this.onPanEnd,
    this.onPanCancel,
    this.onScaleStart,
    this.onScaleUpdate,
    this.onScaleEnd,
    this.behavior,
    this.excludeFromSemantics = false,
    this.dragStartBehavior = DragStartBehavior.down,
  }) {
    this.key = key;
    this.child = child;
  }

  @override
  Widget build({
    Key key,
    Widget child,
    GestureTapDownCallback onTapDown,
    GestureTapUpCallback onTapUp,
    GestureTapCallback onTap,
    GestureTapCancelCallback onTapCancel,
    GestureTapCallback onDoubleTap,
    GestureLongPressCallback onLongPress,
    GestureLongPressUpCallback onLongPressUp,
    GestureLongPressDragStartCallback onLongPressDragStart,
    GestureLongPressDragUpdateCallback onLongPressDragUpdate,
    GestureLongPressDragUpCallback onLongPressDragUp,
    GestureDragDownCallback onVerticalDragDown,
    GestureDragStartCallback onVerticalDragStart,
    GestureDragUpdateCallback onVerticalDragUpdate,
    GestureDragEndCallback onVerticalDragEnd,
    GestureDragCancelCallback onVerticalDragCancel,
    GestureDragDownCallback onHorizontalDragDown,
    GestureDragStartCallback onHorizontalDragStart,
    GestureDragUpdateCallback onHorizontalDragUpdate,
    GestureDragEndCallback onHorizontalDragEnd,
    GestureDragCancelCallback onHorizontalDragCancel,
    GestureForcePressStartCallback onForcePressStart,
    GestureForcePressPeakCallback onForcePressPeak,
    GestureForcePressUpdateCallback onForcePressUpdate,
    GestureForcePressEndCallback onForcePressEnd,
    GestureDragDownCallback onPanDown,
    GestureDragStartCallback onPanStart,
    GestureDragUpdateCallback onPanUpdate,
    GestureDragEndCallback onPanEnd,
    GestureDragCancelCallback onPanCancel,
    GestureScaleStartCallback onScaleStart,
    GestureScaleUpdateCallback onScaleUpdate,
    GestureScaleEndCallback onScaleEnd,
    HitTestBehavior behavior,
    bool excludeFromSemantics,
    DragStartBehavior dragStartBehavior,
  }) {
    return GestureDetector(
      key: key ?? this.key,
      child: child ?? this.child,
      onTapDown: onTapDown ?? this.onTapDown,
      onTapUp: onTapUp ?? this.onTapUp,
      onTap: onTap ?? this.onTap,
      onTapCancel: onTapCancel ?? this.onTapCancel,
      onDoubleTap: onDoubleTap ?? this.onDoubleTap,
      onLongPress: onLongPress ?? this.onLongPress,
      onLongPressUp: onLongPressUp ?? this.onLongPressUp,
      onLongPressDragStart: onLongPressDragStart ?? this.onLongPressDragStart,
      onLongPressDragUpdate:
          onLongPressDragUpdate ?? this.onLongPressDragUpdate,
      onLongPressDragUp: onLongPressDragUp ?? this.onLongPressDragUp,
      onVerticalDragDown: onVerticalDragDown ?? this.onVerticalDragDown,
      onVerticalDragStart: onVerticalDragStart ?? this.onVerticalDragStart,
      onVerticalDragUpdate: onVerticalDragUpdate ?? this.onVerticalDragUpdate,
      onVerticalDragEnd: onVerticalDragEnd ?? this.onVerticalDragEnd,
      onVerticalDragCancel: onVerticalDragCancel ?? this.onVerticalDragCancel,
      onHorizontalDragDown: onHorizontalDragDown ?? this.onHorizontalDragDown,
      onHorizontalDragStart:
          onHorizontalDragStart ?? this.onHorizontalDragStart,
      onHorizontalDragUpdate:
          onHorizontalDragUpdate ?? this.onHorizontalDragUpdate,
      onHorizontalDragEnd: onHorizontalDragEnd ?? this.onHorizontalDragEnd,
      onHorizontalDragCancel:
          onHorizontalDragCancel ?? this.onHorizontalDragCancel,
      onForcePressStart: onForcePressStart ?? this.onForcePressStart,
      onForcePressPeak: onForcePressPeak ?? this.onForcePressPeak,
      onForcePressUpdate: onForcePressUpdate ?? this.onForcePressUpdate,
      onForcePressEnd: onForcePressEnd ?? this.onForcePressEnd,
      onPanDown: onPanDown ?? this.onPanDown,
      onPanStart: onPanStart ?? this.onPanStart,
      onPanUpdate: onPanUpdate ?? this.onPanUpdate,
      onPanEnd: onPanEnd ?? this.onPanEnd,
      onPanCancel: onPanCancel ?? this.onPanCancel,
      onScaleStart: onScaleStart ?? this.onScaleStart,
      onScaleUpdate: onScaleUpdate ?? this.onScaleUpdate,
      onScaleEnd: onScaleEnd ?? this.onScaleEnd,
      behavior: behavior ?? this.behavior,
      excludeFromSemantics: excludeFromSemantics ?? this.excludeFromSemantics,
      dragStartBehavior: dragStartBehavior ?? this.dragStartBehavior,
    );
  }
}
