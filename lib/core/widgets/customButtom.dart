import 'package:dalelapp/core/utils/app_styles.dart';
import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom(
      {super.key,
      required this.onPerss,
      required this.title,
      this.color = AppColors.primaryColor});
  final VoidCallback onPerss;
  final String title;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
        onPressed: onPerss,
        child: Text(
          title,
          style: AppStyles.styles18.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
