import 'package:flutter/material.dart';

abstract class FWidgetBuilder {
  Key key;

  bool stateful = true;
  FStatefulController _statefulController;

  FStatefulController _getStatefulController() {
    if (_statefulController == null) {
      _statefulController = FStatefulController._((context) => buildImpl());
    }
    return _statefulController;
  }

  /// 构建Widget
  Widget build() {
    if (stateful) {
      return _getStatefulController()._newWidget();
    }
    return buildImpl();
  }

  /// 刷新Widget
  void update() {
    if (stateful) {
      _getStatefulController()._update();
    }
  }

  @protected
  Widget buildImpl();
}

abstract class FChildWidgetBuilder extends FWidgetBuilder {
  Widget child;
}

abstract class FChildrenWidgetBuilder extends FWidgetBuilder {
  List<Widget> _children;

  List<Widget> get children {
    if (_children == null) {
      _children = const <Widget>[];
    }
    return _children;
  }

  set children(List<Widget> value) {
    _children = value;
  }
}

//---------- stateful controller ----------

class FStatefulController {
  final GlobalKey<_InternalWidgetState> _globalKey = GlobalKey();
  final WidgetBuilder _builder;

  FStatefulController._(this._builder) : assert(_builder != null);

  /// 创建一个ui返回
  StatefulWidget _newWidget() {
    assert(this._builder != null);
    return _InternalWidget(
      builder: _builder,
      key: _globalKey,
    );
  }

  /// 刷新ui
  bool _update() {
    final _InternalWidgetState state = _globalKey.currentState;
    if (state != null) {
      state.update();
      return true;
    }
    return false;
  }
}

class _InternalWidget extends StatefulWidget {
  final WidgetBuilder builder;

  _InternalWidget({
    @required this.builder,
    Key key,
  })  : assert(builder != null),
        super(key: key);

  @override
  _InternalWidgetState createState() => _InternalWidgetState();
}

class _InternalWidgetState extends State<_InternalWidget> {
  void update() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context);
  }
}
