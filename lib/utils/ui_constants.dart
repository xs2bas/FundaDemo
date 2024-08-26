import 'package:flutter/material.dart';

import 'package:fundademo/utils/app_colors.dart';

class UIConstants {
  static const double uiScreenMarginX = 24;
  static const double uiScreenMarginXDouble = 48;
  static const double uiItemMargin = 12;
  static const double uiItemMarginDouble = 24;

  static const defaultTextStyle = TextStyle(
    color: AppColors.black,
    fontStyle: FontStyle.normal,
    fontSize: 14.0,
    fontFamily: 'OpenSans',
  );

  static const headerTextStyle = TextStyle(
    color: AppColors.black,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 20.0,
    fontFamily: 'OpenSans',
  );
}
