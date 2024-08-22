import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/widgets/customtextheader.dart';
import 'package:dalelapp/features/home/presentation/widget/HistoricalHomeListView.dart';
import 'package:flutter/material.dart';

class HistoricalCharacterSection extends StatelessWidget {
  const HistoricalCharacterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(
          text: AppStrings.historicalCharacters,
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 150,
          child: HistoricalCharacterHomeListView(),
        ),
      ],
    );
  }
}
