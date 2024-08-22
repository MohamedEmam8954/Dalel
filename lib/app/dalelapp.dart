import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:dalelapp/core/utils/approuter.dart';
import 'package:dalelapp/features/home/presentation/Manager/navgationBarcubit/navigation_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Dalel extends StatelessWidget {
  const Dalel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offWhite),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.goRoute,
    );
  }
}
