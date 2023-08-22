/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/applogo.svg
  String get applogo => 'assets/images/applogo.svg';

  $AssetsImagesAuthGen get auth => const $AssetsImagesAuthGen();
  $AssetsImagesSplashGen get splash => const $AssetsImagesSplashGen();

  /// List of all assets
  List<String> get values => [applogo];
}

class $AssetsImagesAuthGen {
  const $AssetsImagesAuthGen();

  /// File path: assets/images/auth/agreebox1.svg
  String get agreebox1 => 'assets/images/auth/agreebox1.svg';

  /// File path: assets/images/auth/agreebox2.svg
  String get agreebox2 => 'assets/images/auth/agreebox2.svg';

  /// File path: assets/images/auth/emailsuffixicon.svg
  String get emailsuffixicon => 'assets/images/auth/emailsuffixicon.svg';

  /// File path: assets/images/auth/fullnamesuffixicon.svg
  String get fullnamesuffixicon => 'assets/images/auth/fullnamesuffixicon.svg';

  /// File path: assets/images/auth/googleicon.svg
  String get googleicon => 'assets/images/auth/googleicon.svg';

  /// File path: assets/images/auth/passwordsuffixicon.svg
  String get passwordsuffixicon => 'assets/images/auth/passwordsuffixicon.svg';

  /// File path: assets/images/auth/showpassword1.svg
  String get showpassword1 => 'assets/images/auth/showpassword1.svg';

  /// File path: assets/images/auth/showpassword2.svg
  String get showpassword2 => 'assets/images/auth/showpassword2.svg';

  /// List of all assets
  List<String> get values => [
        agreebox1,
        agreebox2,
        emailsuffixicon,
        fullnamesuffixicon,
        googleicon,
        passwordsuffixicon,
        showpassword1,
        showpassword2
      ];
}

class $AssetsImagesSplashGen {
  const $AssetsImagesSplashGen();

  /// File path: assets/images/splash/splashimage.png
  AssetGenImage get splashimage =>
      const AssetGenImage('assets/images/splash/splashimage.png');

  /// List of all assets
  List<AssetGenImage> get values => [splashimage];
}

class Assets {
  Assets._();

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
