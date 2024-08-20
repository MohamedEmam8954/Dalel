import 'package:dalelapp/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class ForgetPassImage extends StatelessWidget {
  const ForgetPassImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      width: 235,
      child: Image.asset(
        Assets.imagesForgetPass,
      ),
    );
  }
}
