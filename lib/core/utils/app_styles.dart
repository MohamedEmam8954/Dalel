import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:dalelapp/core/utils/appconstant.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styles64 = TextStyle(
    fontSize: 64,
    color: AppColors.deepBrown,
    fontFamily: Appconstant.kPacifico,
  );
  static const TextStyle styles16 = TextStyle(
    fontSize: 16,
    fontFamily: Appconstant.kPoppins,
  );
  static const TextStyle styles18 = TextStyle(
    fontSize: 18,
    fontFamily: Appconstant.kPoppins,
  );
  static const TextStyle styles24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: Appconstant.kPoppins,
  );
  static const TextStyle styles28 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    fontFamily: Appconstant.kPoppins,
  );
  static const TextStyle styles12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: Appconstant.kPoppins,
  );
}
