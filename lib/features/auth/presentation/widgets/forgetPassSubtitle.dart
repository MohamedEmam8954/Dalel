import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ForgetPassSubtitle extends StatelessWidget {
  const ForgetPassSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34),
      child: Text(
        AppStrings.registerYouremailForgetPass,
        style: AppStyles.styles12.copyWith(
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
