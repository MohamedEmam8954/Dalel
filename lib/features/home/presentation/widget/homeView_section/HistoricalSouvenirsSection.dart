import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/widgets/customtextheader.dart';
import 'package:dalelapp/features/home/presentation/widget/HistoricalSouvenirsHomeListView.dart';
import 'package:flutter/material.dart';

class HistoricalSouvenirsSection extends StatelessWidget {
  const HistoricalSouvenirsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
        ),
        CustomHeaderText(
          text: AppStrings.historicalSouvenirs,
        ),
        SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 150,
          child: HistoricalSouvenirsHomeListView(),
        ),
        SizedBox(
          height: 32,
        )
      ],
    );
  }
}
