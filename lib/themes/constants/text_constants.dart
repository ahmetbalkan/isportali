class TextConstants {
  static TextConstants? _instace;
  static TextConstants get instance {
    _instace ??= TextConstants._init();
    return _instace!;
  }

  TextConstants._init();

  // ignore: library_private_types_in_public_api
  final _Text texts = _Text();
}

// ignore: unused_element
class _Text {
  String userLoginText = "ÜYE GİRİŞİ";
  String employerLoginText = "İŞVEREN GİRİŞİ";
  String homepageSlideTitle1 = "Yarınlara umutla bakacağım";
  String homepageSlideTitle2 = "bir işim olsun!";
}
