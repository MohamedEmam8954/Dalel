import 'package:dalelapp/core/utils/app_styles.dart';
import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:flutter/material.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount(
      {super.key,
      required this.text1,
      required this.text2,
      required this.onTap});
  final String text1, text2;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: text1,
                style: AppStyles.styles16.copyWith(
                  color: AppColors.deepBrown,
                ),
              ),
              TextSpan(
                text: text2,
                style: AppStyles.styles16.copyWith(
                  color: AppColors.grey,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
