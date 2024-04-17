import 'package:flutter/material.dart';

const textColor = Color(0xFF0e0e16);
const backgroundColor = Color(0xFFf9f9fb);
const primaryColor = Color(0xFF191971);
const primaryFgColor = Color(0xFFf9f9fb);
const secondaryColor = Color(0xFFa7a7d3);
const secondaryFgColor = Color(0xFF0e0e16);
const accentColor = Color(0xFF7d7dc5);
const accentFgColor = Color(0xFF0e0e16);

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
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
  error: Brightness.light == Brightness.light
      ? Color(0xffB3261E)
      : Color(0xffF2B8B5),
  onError: Brightness.light == Brightness.light
      ? Color(0xffFFFFFF)
      : Color(0xff601410),
);
