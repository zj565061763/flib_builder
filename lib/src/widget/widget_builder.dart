import 'package:flutter/material.dart';

abstract class FWidgetBuilder {
  Key? key;
  final bool stateful;
  _StatefulController? _statefulController;

  FWidgetBuilder({this.stateful = true});

  _StatefulController _getStatefulController() {
    if (_statefulController == null) {
      _statefulController = _StatefulController._((context) {
        return buildImpl();
      });
    }
    return _statefulController!;
  }

  /// 构建Widget
  Widget build() {
    if (stateful) {
      return _getStatefulController()._newWidget();
    } else {
      return buildImpl();
    }
  }

  /// 刷新Widget
  bool update() {
    if (stateful) {
      return _getStatefulController()._update();
    }
    return false;
  }

  @protected
  Widget buildImpl();
}

abstract class FChildWidgetBuilder extends FWidgetBuilder {
  Widget? child;
}

abstract class FChildrenWidgetBuilder extends FWidgetBuilder {
  List<Widget> children = const <Widget>[];
}

//---------- stateful controller ----------

class _StatefulController {
  final GlobalKey<_InternalStatefulWidgetState> _globalKey = GlobalKey();
  final WidgetBuilder _builder;

  _StatefulController._(this._builder);

  /// 创建一个ui返回
  StatefulWidget _newWidget() {
    return _InternalStatefulWidget(
      builder: _builder,
      key: _globalKey,
    );
  }

  /// 刷新ui
  bool _update() {
    final _InternalStatefulWidgetState? state = _globalKey.currentState;
    if (state == null) {
      return false;
    }

    state.update();
    return true;
  }
}

class _InternalStatefulWidget extends StatefulWidget {
  final WidgetBuilder builder;

  _InternalStatefulWidget({
    required this.builder,
    required Key key,
  }) : super(key: key);

  @override
  _InternalStatefulWidgetState createState() => _InternalStatefulWidgetState();
}

class _InternalStatefulWidgetState extends State<_InternalStatefulWidget> {
  /// 刷新
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
