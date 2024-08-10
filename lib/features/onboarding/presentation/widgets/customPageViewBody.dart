import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/utils/app_styles.dart';
import 'package:dalelapp/core/widgets/customButtom.dart';
import 'package:dalelapp/features/onboarding/presentation/widgets/custompageindicator.dart';
import 'package:flutter/material.dart';

class CustomPageViewBody extends StatelessWidget {
  const CustomPageViewBody({
    super.key,
    required this.pageController,
    required this.img,
    required this.title,
    required this.subtitle,
  });

  final String img, title, subtitle;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          img,
          fit: BoxFit.fill,
        ),
        const SizedBox(
          height: 15,
        ),
        CustomPageIndicator(pageController: pageController),
        const SizedBox(
          height: 24,
        ),
        Text(
          title,
          style: AppStyles.styles24,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          subtitle,
          style: AppStyles.styles16,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
