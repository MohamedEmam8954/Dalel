import 'package:dalelapp/core/utils/app_assets.dart';
import 'package:dalelapp/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HistoricalHomeListViewItem extends StatelessWidget {
  const HistoricalHomeListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            offset: Offset(0, 7),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 74,
            height: 96,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                image: AssetImage(
                  Assets.richardTest,
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          const Text(
            "LionHeart",
            style: AppStyles.kPoppinsstyles14,
          )
        ],
      ),
    );
  }
}
