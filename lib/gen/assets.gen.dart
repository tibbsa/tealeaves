/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsGoogleFontsGen {
  const $AssetsGoogleFontsGen();

  /// File path: assets/google_fonts/APACHE.txt
  String get apache => 'assets/google_fonts/APACHE.txt';

  /// File path: assets/google_fonts/Roboto-Black.ttf
  String get robotoBlack => 'assets/google_fonts/Roboto-Black.ttf';

  /// File path: assets/google_fonts/Roboto-BlackItalic.ttf
  String get robotoBlackItalic => 'assets/google_fonts/Roboto-BlackItalic.ttf';

  /// File path: assets/google_fonts/Roboto-Bold.ttf
  String get robotoBold => 'assets/google_fonts/Roboto-Bold.ttf';

  /// File path: assets/google_fonts/Roboto-BoldItalic.ttf
  String get robotoBoldItalic => 'assets/google_fonts/Roboto-BoldItalic.ttf';

  /// File path: assets/google_fonts/Roboto-Italic.ttf
  String get robotoItalic => 'assets/google_fonts/Roboto-Italic.ttf';

  /// File path: assets/google_fonts/Roboto-Light.ttf
  String get robotoLight => 'assets/google_fonts/Roboto-Light.ttf';

  /// File path: assets/google_fonts/Roboto-LightItalic.ttf
  String get robotoLightItalic => 'assets/google_fonts/Roboto-LightItalic.ttf';

  /// File path: assets/google_fonts/Roboto-Medium.ttf
  String get robotoMedium => 'assets/google_fonts/Roboto-Medium.ttf';

  /// File path: assets/google_fonts/Roboto-MediumItalic.ttf
  String get robotoMediumItalic =>
      'assets/google_fonts/Roboto-MediumItalic.ttf';

  /// File path: assets/google_fonts/Roboto-Regular.ttf
  String get robotoRegular => 'assets/google_fonts/Roboto-Regular.ttf';

  /// File path: assets/google_fonts/Roboto-Thin.ttf
  String get robotoThin => 'assets/google_fonts/Roboto-Thin.ttf';

  /// File path: assets/google_fonts/Roboto-ThinItalic.ttf
  String get robotoThinItalic => 'assets/google_fonts/Roboto-ThinItalic.ttf';

  /// List of all assets
  List<String> get values => [
        apache,
        robotoBlack,
        robotoBlackItalic,
        robotoBold,
        robotoBoldItalic,
        robotoItalic,
        robotoLight,
        robotoLightItalic,
        robotoMedium,
        robotoMediumItalic,
        robotoRegular,
        robotoThin,
        robotoThinItalic
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesBrandingGen get branding => const $AssetsImagesBrandingGen();
}

class $AssetsImagesBrandingGen {
  const $AssetsImagesBrandingGen();

  /// File path: assets/images/branding/logo.png
  AssetGenImage get logo =>
      const AssetGenImage('assets/images/branding/logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [logo];
}

class Assets {
  Assets._();

  static const $AssetsGoogleFontsGen googleFonts = $AssetsGoogleFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
