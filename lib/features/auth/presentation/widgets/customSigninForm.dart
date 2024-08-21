import 'package:dalelapp/core/functions/customNavgation.dart';
import 'package:dalelapp/core/functions/customshowToast.dart';
import 'package:dalelapp/core/utils/appStrings.dart';
import 'package:dalelapp/core/utils/approuter.dart';
import 'package:dalelapp/core/utils/customLoadingWidget.dart';
import 'package:dalelapp/core/widgets/customButtom.dart';
import 'package:dalelapp/features/auth/presentation/manager/auth_cubit/authCubit.dart';
import 'package:dalelapp/features/auth/presentation/manager/auth_cubit/authcubitstate.dart';
import 'package:dalelapp/features/auth/presentation/widgets/customtextformfield.dart';
import 'package:dalelapp/features/auth/presentation/widgets/forgetpasswordbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Authcubit, Authcubitstate>(
      listener: (context, state) {
        if (state is SignInSucessAuthCubitState) {
          showToast(AppStrings.welecomeback);
          customReplacementNavgation(context, AppRouter.kHomeView);
        } else if (state is SignInFailureAuthCubitState) {
          showToast(state.errorMessage);
        } else if (state is CheckYourEmailState) {
          showToast(state.message);
        }
      },
      builder: (context, state) {
        Authcubit authcubit = BlocProvider.of<Authcubit>(context);
        return Form(
          autovalidateMode: authcubit.autovalidateModeSignIn,
          key: authcubit.signInGlobalkey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                CustomTextformField(
                  paddingleft: 24,
                  paddingright: 24,
                  paddingtop: 24,
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
                    authcubit.password = password;
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
                const SizedBox(
                  height: 16,
                ),
                //! fill the field
                ForgetPasswordButton(
                  onpressed: () {
                    customNavgation(context, AppRouter.kForgetPaasword);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                state is SignInLoadingAuthCubitState
                    ? const CustomLoadingWidget()
                    : CustomButtom(
                        onPerss: () {
                          if (authcubit.signInGlobalkey.currentState!
                              .validate()) {
                            authcubit.signInWithEmailAndPassword();
                          } else {
                            authcubit.autovalidatemodeSignIN(
                                AutovalidateMode.always);
                          }
                        },
                        title: AppStrings.signIn),
              ],
            ),
          ),
        );
      },
    );
  }
}
