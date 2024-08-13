import 'package:dalelapp/core/functions/customNavgation.dart';
import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/utils/app_styles.dart';
import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:dalelapp/core/utils/approuter.dart';
import 'package:dalelapp/core/widgets/customButtom.dart';
import 'package:dalelapp/features/onboarding/presentation/view/function/onBoardingisVisited.dart';
import 'package:flutter/material.dart';

class LastOnBoardAuth extends StatelessWidget {
  const LastOnBoardAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButtom(
            onPerss: () {
              onBoardingisVisited();
              customReplacementNavgation(context, AppRouter.kSignUp);
            },
            title: AppStrings.createAccount),
        TextButton(
          onPressed: () {
            onBoardingisVisited();
            customReplacementNavgation(context, AppRouter.kSignin);
          },
          child: Text(
            AppStrings.loginNow,
            style: AppStyles.styles18.copyWith(
                color: AppColors.deepBrown,
                decoration: TextDecoration.underline),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
      ],
    );
  }
}
