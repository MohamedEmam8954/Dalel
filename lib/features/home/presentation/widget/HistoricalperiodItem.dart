import 'package:dalelapp/core/utils/app_styles.dart';
import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:flutter/material.dart';

class HistoricalperiodItem extends StatelessWidget {
  const HistoricalperiodItem(
      {super.key, required this.text, required this.img});
  final String text, img;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 96,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: AppColors.grey,
            blurRadius: 10,
            spreadRadius: 0.5,
            offset: Offset(0, 2.5),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            SizedBox(
              width: 63,
              height: 48,
              child: Text(
                text,
                style: AppStyles.kpoppinsw500styles16,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              width: 22,
            ),
            Container(
              width: 47,
              height: 64,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(img),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
