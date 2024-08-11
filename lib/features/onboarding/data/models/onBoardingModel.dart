import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/utils/app_assets.dart';

class OnBoardingModel {
  final String img, title, subtitle;

  OnBoardingModel(
      {required this.img, required this.title, required this.subtitle});
}

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
