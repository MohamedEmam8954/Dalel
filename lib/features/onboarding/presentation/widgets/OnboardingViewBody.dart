import 'package:dalelapp/core/cache/cache_helper.dart';
import 'package:dalelapp/core/functions/customNavgation.dart';
import 'package:dalelapp/core/services/server_Locator.dart';
import 'package:dalelapp/core/utils/appconstant.dart';
import 'package:dalelapp/core/utils/approuter.dart';
import 'package:dalelapp/features/onboarding/presentation/view/function/onBoardingisVisited.dart';
import 'package:dalelapp/features/onboarding/presentation/widgets/customAppBar.dart';
import 'package:dalelapp/features/onboarding/presentation/widgets/custompageView.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              ontap: () {
                onBoardingisVisited();
                customReplacementNavgation(context, AppRouter.kSignUp);
              },
            ),
            const CustomPageView(),
          ],
        ),
      ),
    );
  }
}
