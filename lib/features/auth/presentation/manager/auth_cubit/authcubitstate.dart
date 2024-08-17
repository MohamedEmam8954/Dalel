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
