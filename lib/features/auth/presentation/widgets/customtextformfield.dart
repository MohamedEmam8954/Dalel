import 'package:dalelapp/core/utils/app_styles.dart';
import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:flutter/material.dart';

class CustomTextformField extends StatelessWidget {
  const CustomTextformField(
      {super.key, required this.label, this.valdiator, this.onchanged});
  final String label;
  final String? Function(String?)? valdiator;
  final void Function(String)? onchanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, left: 24, right: 24),
      child: TextFormField(
        validator: valdiator,
        onChanged: onchanged,
        decoration: InputDecoration(
          border: outlineInputBorder(),
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
          label: Text(label),
          labelStyle: AppStyles.styles16.copyWith(
            color: AppColors.deepGrey,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: AppColors.grey));
  }
}
