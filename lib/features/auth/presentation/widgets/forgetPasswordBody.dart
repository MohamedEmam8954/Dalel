import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/features/auth/presentation/widgets/customForgetPasswordform.dart';
import 'package:dalelapp/features/auth/presentation/widgets/custom_text_widget.dart';
import 'package:dalelapp/features/auth/presentation/widgets/forgetPassImg.dart';
import 'package:dalelapp/features/auth/presentation/widgets/forgetPassSubtitle.dart';
import 'package:flutter/material.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 50,
          ),
        ),
        SliverToBoxAdapter(
          child: CustomTextWidget(
            text: AppStrings.forgotPassword
                .substring(0, AppStrings.forgotPassword.length - 1),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        ),
        const SliverToBoxAdapter(child: ForgetPassImage()),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 24,
          ),
        ),
        const SliverToBoxAdapter(child: ForgetPassSubtitle()),
        const SliverToBoxAdapter(child: CustomForgetpassForm()),
      ],
    );
  }
}
