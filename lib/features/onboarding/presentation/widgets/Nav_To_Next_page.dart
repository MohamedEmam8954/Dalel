import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/widgets/customButtom.dart';
import 'package:flutter/material.dart';

class NavToNextPage extends StatelessWidget {
  const NavToNextPage({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
