import 'package:flutter/material.dart';

const textColor = Color(0xFFe9e9f1);
const backgroundColor = Color(0xFF040406);
const primaryColor = Color(0xFF8e8ee6);
const primaryFgColor = Color(0xFF040406);
const secondaryColor = Color(0xFF2c2c58);
const secondaryFgColor = Color(0xFFe9e9f1);
const accentColor = Color(0xFF3a3a82);
const accentFgColor = Color(0xFFe9e9f1);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  background: backgroundColor,
  onBackground: textColor,
  primary: primaryColor,
  onPrimary: primaryFgColor,
  secondary: secondaryColor,
  onSecondary: secondaryFgColor,
  tertiary: accentColor,
  onTertiary: accentFgColor,
  surface: backgroundColor,
  onSurface: textColor,
  error: Brightness.dark == Brightness.light
      ? Color(0xffB3261E)
      : Color(0xffF2B8B5),
  onError: Brightness.dark == Brightness.light
      ? Color(0xffFFFFFF)
      : Color(0xff601410),
);
