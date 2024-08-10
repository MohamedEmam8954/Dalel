import 'package:dalelapp/features/onboarding/presentation/widgets/OnboardingViewBody.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: OnBoardingViewBody(),
      ),
    );
  }
}
