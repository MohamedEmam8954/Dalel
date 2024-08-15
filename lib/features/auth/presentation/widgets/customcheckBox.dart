import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: AppColors.deepBrown,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(color: AppColors.grey)),
      value: value,
      onChanged: (onchanged) {
        value = onchanged!;
        setState(() {});
      },
    );
  }
}
