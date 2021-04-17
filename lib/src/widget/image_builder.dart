import 'package:flib_builder/src/widget/widget_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';

class FBImageNetwork extends FWidgetBuilder {
  String src = "";
  double scale = 1.0;
  ImageFrameBuilder? frameBuilder;
  ImageLoadingBuilder? loadingBuilder;
  ImageErrorWidgetBuilder? errorBuilder;
  String? semanticLabel;
  bool excludeFromSemantics = false;
  double? width;
  double? height;
  Color? color;
  BlendMode? colorBlendMode;
  BoxFit? fit;
  AlignmentGeometry alignment = Alignment.center;
  ImageRepeat repeat = ImageRepeat.noRepeat;
  Rect? centerSlice;
  bool matchTextDirection = false;
  bool gaplessPlayback = false;
  FilterQuality filterQuality = FilterQuality.low;
  bool isAntiAlias = false;
  Map<String, String>? headers;
  int? cacheWidth;
  int? cacheHeight;

  @protected
  @override
  Widget buildImpl() {
    return Image.network(
      this.src,
      key: this.key,
      scale: this.scale,
      frameBuilder: this.frameBuilder,
      loadingBuilder: this.loadingBuilder,
      errorBuilder: this.errorBuilder,
      semanticLabel: this.semanticLabel,
      excludeFromSemantics: this.excludeFromSemantics,
      width: this.width,
      height: this.height,
      color: this.color,
      colorBlendMode: this.colorBlendMode,
      fit: this.fit,
      alignment: this.alignment,
      repeat: this.repeat,
      centerSlice: this.centerSlice,
      matchTextDirection: this.matchTextDirection,
      gaplessPlayback: this.gaplessPlayback,
      filterQuality: this.filterQuality,
      isAntiAlias: this.isAntiAlias,
      headers: this.headers,
      cacheWidth: this.cacheWidth,
      cacheHeight: this.cacheHeight,
    );
  }
}

class FBImageAsset extends FWidgetBuilder {
  String name = "";
  AssetBundle? bundle;
  ImageFrameBuilder? frameBuilder;
  ImageErrorWidgetBuilder? errorBuilder;
  String? semanticLabel;
  bool excludeFromSemantics = false;
  double? scale;
  double? width;
  double? height;
  Color? color;
  BlendMode? colorBlendMode;
  BoxFit? fit;
  AlignmentGeometry alignment = Alignment.center;
  ImageRepeat repeat = ImageRepeat.noRepeat;
  Rect? centerSlice;
  bool matchTextDirection = false;
  bool gaplessPlayback = false;
  bool isAntiAlias = false;
  String? package;
  FilterQuality filterQuality = FilterQuality.low;
  int? cacheWidth;
  int? cacheHeight;

  @override
  Widget buildImpl() {
    return Image.asset(
      this.name,
      key: this.key,
      bundle: this.bundle,
      frameBuilder: this.frameBuilder,
      errorBuilder: this.errorBuilder,
      semanticLabel: this.semanticLabel,
      excludeFromSemantics: this.excludeFromSemantics,
      scale: this.scale,
      width: this.width,
      height: this.height,
      color: this.color,
      colorBlendMode: this.colorBlendMode,
      fit: this.fit,
      alignment: this.alignment,
      repeat: this.repeat,
      centerSlice: this.centerSlice,
      matchTextDirection: this.matchTextDirection,
      gaplessPlayback: this.gaplessPlayback,
      isAntiAlias: this.isAntiAlias,
      package: this.package,
      filterQuality: this.filterQuality,
      cacheWidth: this.cacheWidth,
      cacheHeight: this.cacheHeight,
    );
  }
}
