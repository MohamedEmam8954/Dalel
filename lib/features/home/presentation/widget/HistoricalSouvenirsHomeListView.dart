import 'package:dalelapp/features/home/presentation/widget/HistoricalHomeListViewItem.dart';
import 'package:flutter/material.dart';

class HistoricalSouvenirsHomeListView extends StatelessWidget {
  const HistoricalSouvenirsHomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      clipBehavior: Clip.none,
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 16,
        );
      },
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const HistoricalHomeListViewItem();
      },
    );
  }
}
