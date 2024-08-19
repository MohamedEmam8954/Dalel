import 'package:dalelapp/core/functions/customNavgation.dart';
import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/utils/approuter.dart';
import 'package:dalelapp/features/auth/presentation/widgets/WelcomBanner.dart';
import 'package:dalelapp/features/auth/presentation/widgets/customSigninForm.dart';
import 'package:dalelapp/features/auth/presentation/widgets/custom_text_widget.dart';
import 'package:dalelapp/features/auth/presentation/widgets/haveanaccount.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SiginInViewBody extends StatelessWidget {
  const SiginInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: WelcomeBanner(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        const SliverToBoxAdapter(
            child: CustomTextWidget(text: AppStrings.welecomeback)),
        const SliverToBoxAdapter(child: CustomSignInForm()),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        SliverToBoxAdapter(
          child: HaveAnAccount(
            text1: AppStrings.dontHaveAccount,
            text2: AppStrings.signUp,
            onTap: () {
              customReplacementNavgation(context, AppRouter.kSignUp);
            },
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
      ],
    );
  }
}
