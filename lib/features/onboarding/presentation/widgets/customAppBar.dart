import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.ontap});
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: ontap,
        child: const Text(
          AppStrings.skip,
          style: AppStyles.styles16,
        ),
      ),
    );
  }
}
