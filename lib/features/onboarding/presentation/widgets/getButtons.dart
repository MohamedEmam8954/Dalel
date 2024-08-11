import 'package:dalelapp/features/onboarding/data/models/onBoardingModel.dart';
import 'package:dalelapp/features/onboarding/presentation/widgets/Nav_To_Next_page.dart';
import 'package:dalelapp/features/onboarding/presentation/widgets/last_ONboarding_auth.dart';
import 'package:flutter/material.dart';

class GetButtons extends StatelessWidget {
  const GetButtons(
      {super.key, required this.index, required this.pageController});
  final int index;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return index == onboarding.length - 1
        ? const LastOnBoardAuth()
        : NavToNextPage(pageController: pageController);
  }
}
