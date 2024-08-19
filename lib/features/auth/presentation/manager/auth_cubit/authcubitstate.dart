class Authcubitstate {}

class InitialAuthCubitState extends Authcubitstate {}

class LoadingAuthCubitState extends Authcubitstate {}

class FailureAuthCubitState extends Authcubitstate {
  final String errorMessage;
  FailureAuthCubitState({required this.errorMessage});
}

class SucessAuthCubitState extends Authcubitstate {}

class CheckTermsAndConditionState extends Authcubitstate {}

class CheckVisbilityState extends Authcubitstate {}

class AutoValidatedModeStateSignin extends Authcubitstate {}

class AutoValidatedModeStateSignUp extends Authcubitstate {}

class SignInLoadingAuthCubitState extends Authcubitstate {}

class SignInFailureAuthCubitState extends Authcubitstate {
  final String errorMessage;
  SignInFailureAuthCubitState({required this.errorMessage});
}

class SignInSucessAuthCubitState extends Authcubitstate {}
