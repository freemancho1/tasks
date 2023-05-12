import 'package:flutter/material.dart';

class ThemeCfg {
  /// 기본 색상
  static Color colorPrimary = Colors.teal;
  static Color colorOnPrimary = Colors.white;
  static Color colorSecondary = Colors.teal[300]!;
  static Color colorOnSecondary = Colors.white;
  static Color colorOutline = Colors.grey[400]!;
  static Color colorOnOutLine = Colors.grey[800]!;
  static Color colorShadow = Colors.black;
  static Color colorOnShadow = Colors.white;

  /// 글자 크기
  static const double sizeSmall = 13.0;
  static const double sizeNormal = 16.0;
  static const double sizeLarge = 19.0;
  static const double sizeTitle = 21.0;

  /// ThemeData
  static final ThemeData appTheme = ThemeData(
    primarySwatch: colorPrimary as MaterialColor,
    useMaterial3: false,
  );

  /// 할일 목록관련 스타일
  static Color colorTileLeading(bool isCompleted, bool isActive) =>
    isCompleted ? colorOutline : isActive ? colorPrimary : colorOnOutLine;
  static TextStyle styleEmptyList = TextStyle(
    color: colorSecondary,
    fontSize: sizeNormal,
  );
  static TextStyle styleTileTitle(bool isCompleted, bool isActive) =>
    TextStyle(
      color: isCompleted
        ? colorOutline
        : isActive
          ? colorPrimary
          : colorOnOutLine,
      fontSize: sizeTitle,
      fontWeight: FontWeight.bold,
      overflow: TextOverflow.ellipsis,
    );
  static TextStyle styleTileSubTitle(bool isCompleted, bool isActive) =>
    TextStyle(
      color: isCompleted
        ? colorOutline
        : isActive
          ? colorSecondary
          : colorOutline,
      fontSize: sizeNormal,
    );
  static TextStyle styleTileLabel(bool isCompleted, bool isActive) =>
    TextStyle(
      color: isCompleted
        ? colorOutline
        : isActive
          ? colorSecondary
          : colorOutline,
      fontSize: sizeSmall,
    );
  static BoxBorder borderTile([bool isActive = false]) =>
    Border.all(
      color: isActive ? colorSecondary : colorOutline,
      width: 1.0,
    );

  /// 시스템 스타일
  static TextStyle styleSnackBar = TextStyle(
    color: colorOnPrimary,
    overflow: TextOverflow.ellipsis,
  );

}