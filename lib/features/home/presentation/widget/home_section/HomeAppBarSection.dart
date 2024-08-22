import 'package:dalelapp/features/home/presentation/widget/customhomeviewappbar.dart';
import 'package:flutter/material.dart';

class HomeAppBarSection extends StatelessWidget {
  const HomeAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHomeViewAppBar(),
        SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
