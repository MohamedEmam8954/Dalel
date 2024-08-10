import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/utils/app_assets.dart';
import 'package:dalelapp/core/utils/app_styles.dart';
import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:dalelapp/core/widgets/customButtom.dart';
import 'package:dalelapp/features/onboarding/presentation/models/onBoardingModel.dart';
import 'package:dalelapp/features/onboarding/presentation/widgets/customPageViewBody.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatefulWidget {
  const CustomPageView({
    super.key,
  });

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  final PageController pageController = PageController();
  List<OnBoardingModel> onboarding = [
    OnBoardingModel(
      img: Assets.imagesOnBoarding2,
      title: AppStrings.exploreHistory,
      subtitle: AppStrings.historyLibraries,
    ),
    OnBoardingModel(
      img: Assets.imagesOnBoarding1,
      title: AppStrings.everyPlace,
      subtitle: AppStrings.varietyAncientPlaces,
    ),
    OnBoardingModel(
      img: Assets.imagesOnBoarding3,
      title: AppStrings.modernAITechnology,
      subtitle: AppStrings.aiRecommendations,
    ),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 535,
          child: PageView.builder(
            onPageChanged: (value) {
              index = value;
              setState(() {});
            },
            itemCount: onboarding.length,
            controller: pageController,
            itemBuilder: (context, index) {
              return CustomPageViewBody(
                img: onboarding[index].img,
                title: onboarding[index].title,
                subtitle: onboarding[index].subtitle,
                pageController: pageController,
              );
            },
          ),
        ),
        index == 2
            ? Column(
                children: [
                  CustomButtom(onPerss: () {}, title: AppStrings.createAccount),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      AppStrings.loginNow,
                      style: AppStyles.styles18.copyWith(
                          color: AppColors.deepBrown,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                ],
              )
            : Column(
                children: [
                  const SizedBox(
                    height: 18,
                  ),
                  CustomButtom(
                      onPerss: () {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      title: AppStrings.next),
                ],
              ),
      ],
    );
  }
}
