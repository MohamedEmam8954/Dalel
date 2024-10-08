import 'package:dalelapp/core/functions/customNavgation.dart';
import 'package:dalelapp/core/functions/customshowToast.dart';
import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/utils/appcolors.dart';
import 'package:dalelapp/core/utils/approuter.dart';
import 'package:dalelapp/core/utils/customLoadingWidget.dart';
import 'package:dalelapp/core/widgets/customButtom.dart';
import 'package:dalelapp/features/auth/presentation/manager/auth_cubit/authCubit.dart';
import 'package:dalelapp/features/auth/presentation/manager/auth_cubit/authcubitstate.dart';
import 'package:dalelapp/features/auth/presentation/widgets/customcheckBox.dart';
import 'package:dalelapp/features/auth/presentation/widgets/customtextformfield.dart';
import 'package:dalelapp/features/auth/presentation/widgets/terms&conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSiginUpForm extends StatelessWidget {
  const CustomSiginUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Authcubit, Authcubitstate>(
      listener: (context, state) {
        if (state is SucessAuthCubitState) {
          showToast(AppStrings.accountcreatedsucess);
          customReplacementNavgation(context, AppRouter.kSignin);
        } else if (state is FailureAuthCubitState) {
          showToast(state.errorMessage);
        }
      },
      builder: (context, state) {
        Authcubit authcubit = BlocProvider.of<Authcubit>(context);
        return Form(
          autovalidateMode: authcubit.autovalidateModeSiginup,
          key: authcubit.signupGlobalkey,
          child: Column(
            children: [
              CustomTextformField(
                paddingleft: 24,
                paddingright: 24,
                paddingtop: 32,
                label: AppStrings.firstName,
                onchanged: (fristName) {
                  authcubit.fristname = fristName;
                },
                valdiator: (value) {
                  if (value?.isEmpty ?? true) {
                    return AppStrings.thisFieldIsRequired;
                  }
                  return null;
                },
              ),
              CustomTextformField(
                paddingleft: 24,
                paddingright: 24,
                paddingtop: 32,
                label: AppStrings.lastName,
                onchanged: (lastName) {
                  authcubit.lastname = lastName;
                },
                valdiator: (value) {
                  if (value?.isEmpty ?? true) {
                    return AppStrings.thisFieldIsRequired;
                  }
                  return null;
                },
              ),
              CustomTextformField(
                paddingleft: 24,
                paddingright: 24,
                paddingtop: 32,
                label: AppStrings.emailAddress,
                onchanged: (emailAddress) {
                  authcubit.email = emailAddress;
                },
                valdiator: (value) {
                  if (value?.isEmpty ?? true) {
                    return AppStrings.thisFieldIsRequired;
                  }
                  return null;
                },
              ),
              CustomTextformField(
                paddingleft: 24,
                paddingright: 24,
                paddingtop: 32,
                label: AppStrings.password,
                onchanged: (password) {
                  BlocProvider.of<Authcubit>(context).password = password;
                },
                valdiator: (value) {
                  if (value?.isEmpty ?? true) {
                    return AppStrings.thisFieldIsRequired;
                  }
                  return null;
                },
                isvisable: authcubit.visbile
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
                suffixIconButn: () {
                  authcubit.checkVisbility(isvisible: !authcubit.visbile);
                },
                obscuretext: authcubit.visbile ? false : true,
                suffixicon: true,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    CustomCheckbox(),
                    TermsAndCondition(),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              state is LoadingAuthCubitState
                  ? const CustomLoadingWidget()
                  : CustomButtom(
                      color: authcubit.checktermsandcondition
                          ? AppColors.primaryColor
                          : AppColors.grey,
                      onPerss: () async {
                        if (authcubit.checktermsandcondition == true) {
                          if (authcubit.signupGlobalkey.currentState!
                              .validate()) {
                            await BlocProvider.of<Authcubit>(context)
                                .createAccountWithEmailAndPassword();
                          } else {
                            authcubit.autovalidatemodeSignUp(
                                AutovalidateMode.always);
                          }
                        } else {
                          showToast("agree to our terms and condition");
                        }
                      },
                      title: AppStrings.signUp),
            ],
          ),
        );
      },
    );
  }
}
