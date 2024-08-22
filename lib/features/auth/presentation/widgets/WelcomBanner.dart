import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/utils/app_assets.dart';
import 'package:dalelapp/core/utils/app_styles.dart';
import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeBanner extends StatelessWidget {
  const WelcomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 240,
          color: AppColors.primaryColor,
          alignment: Alignment.center,
          child: Text(
            AppStrings.appName,
            style: AppStyles.styles32.copyWith(color: Colors.white),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: SvgPicture.asset(
            Assets.welcomeBanner1,
            fit: BoxFit.fill,
            width: 176.72,
            height: 128.58,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: SvgPicture.asset(
            Assets.welcomeBanner2,
            fit: BoxFit.fill,
            width: 176.72,
            height: 128.58,
          ),
        ),
      ],
    );
  }
}
