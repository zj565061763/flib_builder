import 'package:flib_builder/src/widget/widget_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/widgets/framework.dart';

class FBGestureDetector extends FChildWidgetBuilder {
  GestureTapDownCallback onTapDown;
  GestureTapUpCallback onTapUp;
  GestureTapCallback onTap;
  GestureTapCancelCallback onTapCancel;
  GestureTapDownCallback onSecondaryTapDown;
  GestureTapUpCallback onSecondaryTapUp;
  GestureTapCancelCallback onSecondaryTapCancel;
  GestureTapCallback onDoubleTap;
  GestureLongPressCallback onLongPress;
  GestureLongPressStartCallback onLongPressStart;
  GestureLongPressMoveUpdateCallback onLongPressMoveUpdate;
  GestureLongPressUpCallback onLongPressUp;
  GestureLongPressEndCallback onLongPressEnd;
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

  FBGestureDetector({
    this.onTapDown,
    this.onTapUp,
    this.onTap,
    this.onTapCancel,
    this.onSecondaryTapDown,
    this.onSecondaryTapUp,
    this.onSecondaryTapCancel,
    this.onDoubleTap,
    this.onLongPress,
    this.onLongPressStart,
    this.onLongPressMoveUpdate,
    this.onLongPressUp,
    this.onLongPressEnd,
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
    this.dragStartBehavior = DragStartBehavior.start,
  });

  @override
  Widget buildImpl() {
    return GestureDetector(
      key: this.key,
      child: this.child,
      onTapDown: this.onTapDown,
      onTapUp: this.onTapUp,
      onTap: this.onTap,
      onTapCancel: this.onTapCancel,
      onSecondaryTapDown: this.onSecondaryTapDown,
      onSecondaryTapUp: this.onSecondaryTapUp,
      onSecondaryTapCancel: this.onSecondaryTapCancel,
      onDoubleTap: this.onDoubleTap,
      onLongPress: this.onLongPress,
      onLongPressStart: this.onLongPressStart,
      onLongPressMoveUpdate: this.onLongPressMoveUpdate,
      onLongPressUp: this.onLongPressUp,
      onLongPressEnd: this.onLongPressEnd,
      onVerticalDragDown: this.onVerticalDragDown,
      onVerticalDragStart: this.onVerticalDragStart,
      onVerticalDragUpdate: this.onVerticalDragUpdate,
      onVerticalDragEnd: this.onVerticalDragEnd,
      onVerticalDragCancel: this.onVerticalDragCancel,
      onHorizontalDragDown: this.onHorizontalDragDown,
      onHorizontalDragStart: this.onHorizontalDragStart,
      onHorizontalDragUpdate: this.onHorizontalDragUpdate,
      onHorizontalDragEnd: this.onHorizontalDragEnd,
      onHorizontalDragCancel: this.onHorizontalDragCancel,
      onForcePressStart: this.onForcePressStart,
      onForcePressPeak: this.onForcePressPeak,
      onForcePressUpdate: this.onForcePressUpdate,
      onForcePressEnd: this.onForcePressEnd,
      onPanDown: this.onPanDown,
      onPanStart: this.onPanStart,
      onPanUpdate: this.onPanUpdate,
      onPanEnd: this.onPanEnd,
      onPanCancel: this.onPanCancel,
      onScaleStart: this.onScaleStart,
      onScaleUpdate: this.onScaleUpdate,
      onScaleEnd: this.onScaleEnd,
      behavior: this.behavior,
      excludeFromSemantics: this.excludeFromSemantics,
      dragStartBehavior: this.dragStartBehavior,
    );
  }
}
