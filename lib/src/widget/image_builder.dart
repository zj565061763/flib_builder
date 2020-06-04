import 'package:flib_builder/src/widget/widget_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class FBImageNetwork extends FWidgetBuilder {
  String src;
  double scale;
  ImageFrameBuilder frameBuilder;
  ImageLoadingBuilder loadingBuilder;
  ImageErrorWidgetBuilder errorBuilder;
  String semanticLabel;
  bool excludeFromSemantics;
  double width;
  double height;
  Color color;
  BlendMode colorBlendMode;
  BoxFit fit;
  AlignmentGeometry alignment;
  ImageRepeat repeat;
  Rect centerSlice;
  bool matchTextDirection;
  bool gaplessPlayback;
  FilterQuality filterQuality;
  Map<String, String> headers;
  int cacheWidth;
  int cacheHeight;

  FBImageNetwork({
    this.src,
    this.scale = 1.0,
    this.frameBuilder,
    this.loadingBuilder,
    this.errorBuilder,
    this.semanticLabel,
    this.excludeFromSemantics = false,
    this.width,
    this.height,
    this.color,
    this.colorBlendMode,
    this.fit,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.centerSlice,
    this.matchTextDirection = false,
    this.gaplessPlayback = false,
    this.filterQuality = FilterQuality.low,
    this.headers,
    this.cacheWidth,
    this.cacheHeight,
  });

  @protected
  @override
  Widget buildImpl() {
    return Image.network(
      src,
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
      headers: this.headers,
      cacheWidth: this.cacheWidth,
      cacheHeight: this.cacheHeight,
    );
  }
}
