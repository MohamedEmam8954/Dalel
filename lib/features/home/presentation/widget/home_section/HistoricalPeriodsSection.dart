import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/widgets/customtextheader.dart';
import 'package:dalelapp/features/home/presentation/widget/Historicalperiods.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodsSection extends StatelessWidget {
  const HistoricalPeriodsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomHeaderText(
          text: AppStrings.historicalPeriods,
        ),
        Historicalperiods(),
        SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
