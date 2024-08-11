import 'package:dalelapp/features/onboarding/data/models/onBoardingModel.dart';
import 'package:dalelapp/features/onboarding/presentation/widgets/customPageViewBody.dart';
import 'package:dalelapp/features/onboarding/presentation/widgets/getButtons.dart';
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

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 535,
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
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
        GetButtons(
          index: index,
          pageController: pageController,
        ),
      ],
    );
  }
}
