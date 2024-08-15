import 'package:dalelapp/features/auth/presentation/manager/auth_cubit/authcubitstate.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Authcubit extends Cubit<Authcubitstate> {
  Authcubit() : super(InitialAuthCubitState());
  late String? fristname;
  late String? lastname;
  late String? email;
  late String? password;
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
}
