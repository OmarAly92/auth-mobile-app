import 'dart:developer';

import 'package:flutter/cupertino.dart';

import '../networking/model/limit_font_size_model.dart';
import 'size_config.dart';

abstract class Styles {
  static TextStyle textStyle12(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle textStyle14(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle textStyle15(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 15),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle textStyle16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle textStyle17(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 17),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle textStyle18(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle textStyle19(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 19),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle textStyle20(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle textStyle22(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 22),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle textStyle23(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 23),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle textStyle24(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle textStyle25(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 25),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle textStyle26(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 26),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle textStyle28(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 28),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle textStyle30(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle textStyle32(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 32),
      fontWeight: FontWeight.normal,
    );
  }

  static double getResponsiveFontSize(context, {required double fontSize}) {
    final double scaleFactor = getScaleFactor(context);
    final double responsiveFontSize = fontSize * scaleFactor;
    final limits = getLimits(context);

    final double lowerLimit = fontSize * limits.lowerLimit;
    final double upperLimit = fontSize * limits.upperLimit;

    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static LimitFontSizeModel getLimits(context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width < SizeConfig.tablet) {
      return const LimitFontSizeModel(lowerLimit: 0.6, upperLimit: 1.2);
    } else if (width < SizeConfig.desktop) {
      return const LimitFontSizeModel(lowerLimit: 0.8, upperLimit: 1.0);
    } else {
      return const LimitFontSizeModel(lowerLimit: 0.9, upperLimit: 1.6);
    }
  }

  static double getScaleFactor(context) {
    final width = MediaQuery.sizeOf(context).width;
    log(width.toString());
    if (width < SizeConfig.tablet) {
      return width / 500;
    } else if (width < SizeConfig.desktop) {
      return width / 800;
    } else {
      return width / 1650;
    }
  }
}
