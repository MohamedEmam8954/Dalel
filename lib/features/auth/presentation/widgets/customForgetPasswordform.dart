import 'package:dalelapp/core/functions/customshowToast.dart';
import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/utils/customLoadingWidget.dart';
import 'package:dalelapp/core/widgets/customButtom.dart';
import 'package:dalelapp/features/auth/presentation/manager/auth_cubit/authCubit.dart';
import 'package:dalelapp/features/auth/presentation/manager/auth_cubit/authcubitstate.dart';
import 'package:dalelapp/features/auth/presentation/widgets/customtextformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CustomForgetpassForm extends StatelessWidget {
  const CustomForgetpassForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Authcubit, Authcubitstate>(
      listener: (context, state) {
        if (state is ForgetPasswordSucessAuthCubitState) {
          showToast(AppStrings.changeYourPassword);
          GoRouter.of(context).pop();
        } else if (state is ForgetPasswordFailureAuthCubitState) {
          showToast(state.errorMessage);
        }
      },
      builder: (context, state) {
        Authcubit authcubit = BlocProvider.of<Authcubit>(context);
        return Form(
          autovalidateMode: authcubit.autovalidateModeForgetPass,
          key: authcubit.forgetPassGlobalKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                CustomTextformField(
                  paddingleft: 24,
                  paddingright: 24,
                  paddingtop: 41,
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
                const SizedBox(
                  height: 60,
                ),
                state is ForgetPasswordLoadingAuthCubitState
                    ? const CustomLoadingWidget()
                    : CustomButtom(
                        onPerss: () async {
                          if (authcubit.forgetPassGlobalKey.currentState!
                              .validate()) {
                            await authcubit.resetPasswordWithLink();
                          } else {
                            authcubit.autovalidatemodeForgetPass(
                                AutovalidateMode.always);
                          }
                        },
                        title: AppStrings.resetPasswordLink),
              ],
            ),
          ),
        );
      },
    );
  }
}
