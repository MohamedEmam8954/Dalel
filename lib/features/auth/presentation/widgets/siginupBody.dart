import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/features/auth/presentation/widgets/customSignUpForm.dart';
import 'package:dalelapp/features/auth/presentation/widgets/custom_text_widget.dart';
import 'package:dalelapp/features/auth/presentation/widgets/haveanaccount.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 108,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomTextWidget(text: AppStrings.welcome),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomSiginUpForm(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: HaveAnAccount(
                text1: AppStrings.alreadyHaveAccount, text2: AppStrings.signIn),
          )
        ],
      ),
    );
  }
}
