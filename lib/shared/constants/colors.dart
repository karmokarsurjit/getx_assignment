import 'dart:ui';

class ConstantColors{
  static const Color WHITE = Color(0xFFFFFFFF);
  static const Color WHITE2 = Color(0xFFF8F5F5);
  static const Color OFFWHITE = Color(0xFFF5F1F1);
  static const Color TRANSPARENT = Color(0);
  static const Color GREY = Color(0xFF828282);
  static const Color DARKGREY = Color(0xFF32302C);
  static const Color BLACK = Color(0xFF000000);
  static const Color RED = Color(0xFFFD3131);
  static const Color GREEN = Color(0xFF018337);
  static const Color YELLOW = Color(0xFFF2C94C);

  static const Color LOGINBACKGROUND =Color(0xFF32302C);
  static const Color REGBACKGROUND =Color(0xFF32302C);
  static const Color DASHBACKGROUND= Color(0xFFFFFFFF);
  static const Color BUTTON = Color(0xFFF2C94C);
  static const Color FIELDOUTLINE = Color(0xFFF2C94C);

  static const Color TEXTWHITE = Color(0xFFFFFFFF);
  static const Color TEXTGREY = Color(0xFF828282);
  static const Color TEXTBLACK = Color(0xFF000000);
  static const Color TEXTGREEN = Color(0xFF018337);
  static const Color TEXTYELLOW = Color(0xFFF2C94C);

}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
  'hex color must be #rrggbb or #rrggbbaa');

  return Color(int.parse(hex.substring(1), radix: 16) + (hex.length == 7 ? 0xff000000 : 0x00000000),

  );
}