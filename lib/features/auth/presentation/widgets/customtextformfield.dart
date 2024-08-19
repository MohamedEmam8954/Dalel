import 'package:dalelapp/core/utils/app_styles.dart';
import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:flutter/material.dart';

class CustomTextformField extends StatelessWidget {
  const CustomTextformField(
      {super.key,
      required this.label,
      this.valdiator,
      this.onchanged,
      this.onFieldSubmitted,
      this.suffixIconButn,
      this.isvisable,
      this.obscuretext = false,
      this.suffixicon,
      this.paddingtop,
      this.paddingleft,
      this.paddingright});
  final String label;
  final String? Function(String?)? valdiator;
  final void Function(String)? onchanged;
  final void Function(String)? onFieldSubmitted;
  final VoidCallback? suffixIconButn;
  final Icon? isvisable;
  final bool obscuretext;
  final bool? suffixicon;
  final double? paddingtop, paddingleft, paddingright;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: paddingtop ?? 0,
          left: paddingleft ?? 0,
          right: paddingright ?? 0),
      child: TextFormField(
          onFieldSubmitted: onFieldSubmitted,
          validator: valdiator,
          onChanged: onchanged,
          obscureText: obscuretext,
          decoration: InputDecoration(
            border: outlineInputBorder(),
            enabledBorder: outlineInputBorder(),
            focusedBorder: outlineInputBorder(),
            label: Text(label),
            labelStyle: AppStyles.styles16.copyWith(
              color: AppColors.deepGrey,
            ),
            suffixIcon: suffixicon == true
                ? IconButton(onPressed: suffixIconButn, icon: isvisable!)
                : null,
          )),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(color: AppColors.grey));
  }
}
