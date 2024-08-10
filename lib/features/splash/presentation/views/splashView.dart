import 'package:dalelapp/core/functions/customNavgation.dart';
import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/utils/app_styles.dart';
import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:dalelapp/core/utils/approuter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    navToSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: AppStyles.styles64.copyWith(
            color: AppColors.deepBrown,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  void navToSplash() {
    Future.delayed(const Duration(seconds: 2), () {
      customNavgation(context, AppRouter.kOnBoarding);
    });
  }
}
