import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/utils/app_styles.dart';
import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:flutter/material.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: AppStrings.iHaveagree,
            style: AppStyles.styles12.copyWith(
              color: AppColors.deepBrown,
            ),
          ),
          TextSpan(
            text: AppStrings.termsandcondition,
            style: AppStyles.styles12.copyWith(
              color: AppColors.deepBrown,
              decoration: TextDecoration.underline,
            ),
          )
        ],
      ),
    );
  }
}
