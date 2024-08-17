import 'package:dalelapp/core/functions/customNavgation.dart';
import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/utils/approuter.dart';
import 'package:dalelapp/features/auth/presentation/widgets/customSignUpForm.dart';
import 'package:dalelapp/features/auth/presentation/widgets/custom_text_widget.dart';
import 'package:dalelapp/features/auth/presentation/widgets/haveanaccount.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 108,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextWidget(text: AppStrings.welcome),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomSiginUpForm(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: HaveAnAccount(
              text1: AppStrings.alreadyHaveAccount,
              text2: AppStrings.signIn,
              onTap: () {
                customNavgation(context, AppRouter.kSignin);
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
        ],
      ),
    );
  }
}
