import 'package:cached_network_image/cached_network_image.dart';
import 'package:dalelapp/core/utils/app_styles.dart';
import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:dalelapp/features/home/data/models/HistoricalPeroidmodel.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HistoricalperiodItem extends StatelessWidget {
  const HistoricalperiodItem({
    super.key,
    required this.historicalPeroidModel,
  });
  final HistoricalPeroidModel historicalPeroidModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
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
                historicalPeroidModel.acient,
                style: AppStyles.kpoppinsw500styles16,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              width: 22,
            ),
            SizedBox(
                width: 47,
                height: 64,
                child: CachedNetworkImage(
                  imageUrl: historicalPeroidModel.acientImage,
                  placeholder: (context, url) => Shimmer.fromColors(
                      child: Container(
                        width: 74,
                        height: 64,
                      ),
                      baseColor: Colors.grey,
                      highlightColor: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
