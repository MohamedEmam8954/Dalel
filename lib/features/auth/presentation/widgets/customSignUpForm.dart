import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/widgets/customButtom.dart';
import 'package:dalelapp/features/auth/presentation/manager/auth_cubit/authCubit.dart';
import 'package:dalelapp/features/auth/presentation/widgets/customcheckBox.dart';
import 'package:dalelapp/features/auth/presentation/widgets/customtextformfield.dart';
import 'package:dalelapp/features/auth/presentation/widgets/terms&conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSiginUpForm extends StatefulWidget {
  const CustomSiginUpForm({super.key});

  @override
  State<CustomSiginUpForm> createState() => _CustomSiginUpFormState();
}

class _CustomSiginUpFormState extends State<CustomSiginUpForm> {
  var globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: Column(
        children: [
          CustomTextformField(
            label: AppStrings.firstName,
            onchanged: (fristName) {
              BlocProvider.of<Authcubit>(context).fristname = fristName;
            },
            valdiator: (value) {},
          ),
          CustomTextformField(
            label: AppStrings.lastName,
            onchanged: (lastName) {
              BlocProvider.of<Authcubit>(context).lastname = lastName;
            },
          ),
          CustomTextformField(
            label: AppStrings.emailAddress,
            onchanged: (emailAddress) {
              BlocProvider.of<Authcubit>(context).email = emailAddress;
            },
          ),
          CustomTextformField(
            label: AppStrings.password,
            onchanged: (password) {
              BlocProvider.of<Authcubit>(context).password = password;
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                CustomCheckbox(),
                TermsAndCondition(),
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          CustomButtom(
              onPerss: () {
                BlocProvider.of<Authcubit>(context)
                    .createAccountWithEmailAndPassword();
              },
              title: AppStrings.signUp),
        ],
      ),
    );
  }
}
