import 'package:dalelapp/features/home/presentation/widget/HistoricalHomeListViewItem.dart';
import 'package:flutter/material.dart';

class HistoricalCharacterHomeListView extends StatelessWidget {
  const HistoricalCharacterHomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 16,
        );
      },
      clipBehavior: Clip.none,
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const HistoricalHomeListViewItem();
      },
    );
  }
}
