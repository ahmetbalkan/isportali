class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants get instance {
    _instance ??= ImageConstants._init();
    return _instance!;
  }

  ImageConstants._init();

  // ignore: library_private_types_in_public_api
  final _Lottie lottieAssets = _Lottie();
  // ignore: library_private_types_in_public_api
  final _SVG svgAssets = _SVG();

  final String homepage_slide = 'png/homepage_slide'.toPNG;
}

class _Lottie {}

class _SVG {
  final String poweredby = 'svg/poweredby'.toSVG;
  String logo = 'svg/logo'.toSVG;
}

extension _ImageConstantsExtension on String {
  String get toPNG => 'images/$this.png';
  String get toJSON => 'images/$this.json';
  String get toSVG => 'images/$this.svg';
  String get toJPEG => 'images/$this.jpeg';
  String get toJPG => 'images/$this.jpg';
}
