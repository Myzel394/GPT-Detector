import 'package:flutter/material.dart';
import 'package:gpt_detector/app/theme/base/base_theme.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
final class LightTheme extends BaseTheme {
  @override
  Brightness get brightness => Brightness.light;

  @override
  ColorScheme get colorScheme => _colorScheme;

  ColorScheme get _colorScheme {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff6200ee),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffbb86fc),
      onPrimaryContainer: Color(0xff100c14),
      secondary: Color(0xff03dac6),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffcefaf8),
      onSecondaryContainer: Color(0xff111414),
      tertiary: Color(0xff018786),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffa4f1ef),
      onTertiaryContainer: Color(0xff0e1414),
      error: Color(0xffb00020),
      onError: Color(0xffffffff),
      errorContainer: Color(0xfffcd8df),
      onErrorContainer: Color(0xff141213),
      background: Color(0xfff9f6fe),
      onBackground: Color(0xff090909),
      surface: Color(0xfff9f6fe),
      onSurface: Color(0xff090909),
      surfaceVariant: Color(0xfff3edfd),
      onSurfaceVariant: Color(0xff131213),
      outline: Color(0xff565656),
      shadow: Color(0xff000000),
      inverseSurface: Color(0xff131018),
      onInverseSurface: Color(0xfff5f5f5),
      inversePrimary: Color(0xffda99ff),
      surfaceTint: Color(0xff6200ee),
    );
  }
}
