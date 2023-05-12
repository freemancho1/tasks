import 'package:flutter/material.dart';
import 'package:logging/logging.dart';

class ConstCfg {
  /// 앱명
  static const String appNameEn = 'Tasks';
  static const String appNameKo = '할일 목록';

  /// 윈도우 크기
  static const double _windowWidth = 400;
  static const double _windowHeight = 800;
  static const Size windowSize = Size(_windowWidth, _windowHeight);

  /// 로그 설정
  static const String loggerName = 'com.freeman.app';
  static const Level debugLogLevel = Level.ALL;
  static const Level releaseLogLevel = Level.WARNING;

  /// 라우터 경로
  static const String routeHome = '/';
  static const String routeNew = 'new_task';
  static const String routeTest = 'test';

  /// 시스템에서 사용하는 일반적인 단어
  static const String textSave = '저장';
  static const String textCancel = '취소';
  static const String textClose = '닫기';
  static const String textExit = '종료';
  static const String textOpen = '열기';
  static const String textRemove = '제거';

  /// 시스템에서 사용하는 일반적인 아이콘
  static const IconData iconAdd = Icons.add;
  static const IconData iconDelete = Icons.delete;
  static const IconData iconClose = Icons.close;
  static const IconData iconCalendarMonth = Icons.calendar_month;
  static const IconData iconMenuOpen = Icons.menu_open;
  static const IconData iconEditNote = Icons.edit_note;

  /// 여백
  static const double sizeSmall = 4.0;
  static const double sizeNormal = sizeSmall * 2;
  static const double sizeLarge = sizeNormal * 2;
  static const double sizeDoubleLarge = sizeLarge * 2;
  static const Widget gapWidthSmall = SizedBox(width: sizeSmall,);
  static const Widget gapWidthNormal = SizedBox(width: sizeNormal,);
  static const Widget gapWidthLarge = SizedBox(width: sizeLarge,);
  static const Widget gapWidthDoubleLarge = SizedBox(width: sizeDoubleLarge,);
  static const Widget gapHeightSmall = SizedBox(height: sizeSmall,);
  static const Widget gapHeightNormal = SizedBox(height: sizeNormal,);
  static const Widget gapHeightLarge = SizedBox(height: sizeLarge,);
  static const Widget gapHeightDoubleLarge = SizedBox(height: sizeDoubleLarge,);

  static const EdgeInsets edgeLargeTLR = EdgeInsets.only(
    top: sizeLarge, left: sizeLarge, right: sizeLarge
  );

  /// 할일 목록 화면
  static const double sizeListTileIcon = 24.0;
  static const double sizeActionIconContainerHeight = 25.0;
  static const double sizeActionIconContainerRadius = 25.0;
  static const double sizeActionIcon = 16.0;
  static const String textTasksAppbarTitle = '할일 목록';
  static const String textTasksNothing = '훌륭합니다.\n할일이 없습니다.';
  static const EdgeInsets edgeTileSubContents = EdgeInsets.only(
    left: sizeTileSubContents, right: sizeNormal, bottom: sizeNormal,
  );
  static const double sizeTileSubContents = 40.0;

  /// 할일 등록 관련
  static const String textNewTaskAppbarTitle = '새 할일';
  static const String textNewTaskTitleHint = '새 할일';
  static const String textNewTaskSubTitleHint = '세부 내용';
  static const String textNewTaskDeadlineHint = '기한';
}