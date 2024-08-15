import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/utils/app_styles.dart';
import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:dalelapp/core/utils/appconstant.dart';
import 'package:dalelapp/core/widgets/customButtom.dart';
import 'package:dalelapp/features/auth/presentation/widgets/custom_text_widget.dart';
import 'package:dalelapp/features/auth/presentation/widgets/customcheckBox.dart';
import 'package:dalelapp/features/auth/presentation/widgets/customtextformfield.dart';
import 'package:dalelapp/features/auth/presentation/widgets/haveanaccount.dart';
import 'package:dalelapp/features/auth/presentation/widgets/terms&conditions.dart';
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
            child: CustomTextformField(
              label: AppStrings.firstName,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextformField(
              label: AppStrings.lastName,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextformField(
              label: AppStrings.emailAddress,
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomTextformField(
              label: AppStrings.password,
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  CustomCheckbox(),
                  TermsAndCondition(),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 24,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomButtom(onPerss: () {}, title: AppStrings.signUp),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          const SliverToBoxAdapter(
            child: HaveAnAccount(
                text1: AppStrings.alreadyHaveAccount, text2: AppStrings.signIn),
          )
        ],
      ),
    );
  }
}
