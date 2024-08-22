import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/utils/app_assets.dart';
import 'package:dalelapp/features/home/presentation/widget/HistoricalperiodItem.dart';

import 'package:flutter/material.dart';

class Historicalperiods extends StatelessWidget {
  const Historicalperiods({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HistoricalperiodItem(
            text: AppStrings.ancientEgypt,
            img: Assets.acientEgypt,
          ),
          HistoricalperiodItem(
            text: AppStrings.ancientEgypt,
            img: Assets.acientEgypt,
          ),
        ],
      ),
    );
  }
}
