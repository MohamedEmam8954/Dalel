import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key, required this.onpressed});
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          AppStrings.forgotPassword,
          style: AppStyles.styles12
              .copyWith(fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
    );
  }
}
