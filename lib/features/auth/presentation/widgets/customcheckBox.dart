import 'dart:developer';

import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:dalelapp/features/auth/presentation/manager/auth_cubit/authCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          side: const BorderSide(color: AppColors.grey)),
      value: value,
      onChanged: (onchanged) {
        log(onchanged.toString());
        BlocProvider.of<Authcubit>(context)
            .checkTermsAndCondition(check: onchanged!);
        value = onchanged;
        setState(() {});
      },
    );
  }
}
