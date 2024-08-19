import 'dart:developer';

import 'package:dalelapp/features/auth/presentation/manager/auth_cubit/authcubitstate.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Authcubit extends Cubit<Authcubitstate> {
  Authcubit() : super(InitialAuthCubitState());
  String? fristname;
  String? lastname;
  String? email;
  String? password;
  bool checktermsandcondition = false;
  bool visbile = false;
  var signupGlobalkey = GlobalKey<FormState>();
  var signInGlobalkey = GlobalKey<FormState>();
  AutovalidateMode autovalidateModeSiginup = AutovalidateMode.disabled;
  AutovalidateMode autovalidateModeSignIn = AutovalidateMode.disabled;
  createAccountWithEmailAndPassword() async {
    try {
      emit(LoadingAuthCubitState());
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: password!);
      emit(SucessAuthCubitState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(FailureAuthCubitState(
            errorMessage: 'The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(FailureAuthCubitState(
            errorMessage: 'The account already exists for that email.'));
      }
    } catch (e) {
      emit(FailureAuthCubitState(errorMessage: e.toString()));
    }
  }

  checkTermsAndCondition({required bool check}) {
    try {
      checktermsandcondition = check;
      emit(CheckTermsAndConditionState());
    } catch (e) {
      log(e.toString());
    }
  }

  checkVisbility({required bool isvisible}) {
    visbile = isvisible;
    emit(CheckVisbilityState());
  }

  autovalidatemodeSignUp(AutovalidateMode textvalidate) {
    autovalidateModeSiginup = textvalidate;
    emit(AutoValidatedModeStateSignUp());
  }

  autovalidatemodeSignIN(AutovalidateMode textvalidate) {
    autovalidateModeSignIn = textvalidate;
    emit(AutoValidatedModeStateSignin());
  }

  signInWithEmailAndPassword() async {
    try {
      emit(SignInLoadingAuthCubitState());
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);
      emit(SignInSucessAuthCubitState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignInFailureAuthCubitState(
            errorMessage: 'No user found for that email.'));
      }
      if (e.code == "invalid-credential") {
        emit(
          SignInFailureAuthCubitState(
              errorMessage: "Invalid email or password"),
        );
      }
    } catch (e) {
      emit(FailureAuthCubitState(errorMessage: e.toString()));
    }
  }
}
