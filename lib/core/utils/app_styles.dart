import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:dalelapp/core/utils/appconstant.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styles64 = const TextStyle(
    fontSize: 64,
    color: AppColors.deepBrown,
    fontFamily: Appconstant.kPacifico,
  );
  static TextStyle styles20 = const TextStyle(
    fontSize: 20,
    color: AppColors.deepBrown,
    fontWeight: FontWeight.w400,
    fontFamily: Appconstant.kPoppins,
  );
  static const TextStyle styles16 = TextStyle(
    fontSize: 16,
    fontFamily: Appconstant.kPoppins,
  );
  static const TextStyle kpoppinsw500styles16 = TextStyle(
    fontSize: 16,
    fontFamily: Appconstant.kPoppins,
    fontWeight: FontWeight.w500,
    color: AppColors.deepBrown,
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
  static const TextStyle kPoppinsstyles14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    fontFamily: Appconstant.kPoppins,
    color: AppColors.deepBrown,
  );
  static const TextStyle styles32 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    fontFamily: Appconstant.kPacifico,
  );
}
