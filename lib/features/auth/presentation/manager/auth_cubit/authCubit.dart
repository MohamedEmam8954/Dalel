import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalelapp/core/utils/appStrings.dart';
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
  var forgetPassGlobalKey = GlobalKey<FormState>();
  var currentUser = FirebaseAuth.instance.currentUser;
  AutovalidateMode autovalidateModeSiginup = AutovalidateMode.disabled;
  AutovalidateMode autovalidateModeSignIn = AutovalidateMode.disabled;
  AutovalidateMode autovalidateModeForgetPass = AutovalidateMode.disabled;
  Future<void> createAccountWithEmailAndPassword() async {
    try {
      emit(LoadingAuthCubitState());
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: password!);
      addUserProfile();
      await verifiyEmail(userCredential);

      emit(SucessAuthCubitState());
    } on FirebaseAuthException catch (e) {
      _firebaseHandelExcepetion(e);
    } catch (e) {
      emit(FailureAuthCubitState(errorMessage: e.toString()));
    }
  }

  void _firebaseHandelExcepetion(FirebaseAuthException e) {
    if (e.code == 'weak-password') {
      emit(FailureAuthCubitState(
          errorMessage: 'The password provided is too weak.'));
    } else if (e.code == 'email-already-in-use') {
      emit(FailureAuthCubitState(
          errorMessage: 'The account already exists for that email.'));
    } else if (e.code == "invalid-email") {
      emit(FailureAuthCubitState(errorMessage: 'Invalid Email'));
    } else {
      emit(FailureAuthCubitState(
          errorMessage: 'There is An Error With ${e.code}'));
    }
  }

  Future<void> verifiyEmail(UserCredential userCredential) async {
    await userCredential.user!.sendEmailVerification();
  }

  void checkTermsAndCondition({required bool check}) {
    try {
      checktermsandcondition = check;
      emit(CheckTermsAndConditionState());
    } catch (e) {
      log(e.toString());
    }
  }

  void checkVisbility({required bool isvisible}) {
    visbile = isvisible;
    emit(CheckVisbilityState());
  }

  void autovalidatemodeSignUp(AutovalidateMode textvalidate) {
    autovalidateModeSiginup = textvalidate;
    emit(AutoValidatedModeStateSignUp());
  }

  void autovalidatemodeSignIN(AutovalidateMode textvalidate) {
    autovalidateModeSignIn = textvalidate;
    emit(AutoValidatedModeStateSignin());
  }

  Future<void> signInWithEmailAndPassword() async {
    try {
      emit(SignInLoadingAuthCubitState());
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);

      if (userCredential.user!.emailVerified) {
        emit(SignInSucessAuthCubitState());
      } else {
        emit(CheckYourEmailState(message: AppStrings.sendEmailVerification));
      }
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
      emit(SignInFailureAuthCubitState(errorMessage: e.toString()));
    }
  }

  Future<void> resetPasswordWithLink() async {
    try {
      emit(ForgetPasswordLoadingAuthCubitState());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email!);
      emit(ForgetPasswordSucessAuthCubitState());
    } on FirebaseAuthException catch (e) {
      if (e.code == "invalid-email") {
        emit(
            ForgetPasswordFailureAuthCubitState(errorMessage: 'Invalid Email'));
      } else {
        emit(ForgetPasswordFailureAuthCubitState(
            errorMessage: "There is an Error With ${e.code}"));
      }
    }
  }

  void autovalidatemodeForgetPass(AutovalidateMode textvalidate) {
    autovalidateModeForgetPass = textvalidate;
    emit(AutoValidatedModeStateForgetPass());
  }

  Future<void> addUserProfile() async {
    CollectionReference user = FirebaseFirestore.instance.collection("Users");
    await user.add({
      "frist_Name": fristname,
      "last_Name": lastname,
      "Email": email,
    });
  }
}
