import 'package:dalelapp/core/services/server_Locator.dart';
import 'package:dalelapp/features/auth/presentation/manager/auth_cubit/authCubit.dart';
import 'package:dalelapp/features/auth/presentation/view/siginUpView.dart';
import 'package:dalelapp/features/auth/presentation/view/sigininView.dart';
import 'package:dalelapp/features/onboarding/presentation/view/OnboardingView.dart';
import 'package:dalelapp/features/splash/presentation/views/splashView.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kOnBoarding = "/OnBoarding";
  static const String kSignUp = "/signup";
  static const String kSignin = "/signin";
  static GoRouter goRoute = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kOnBoarding,
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: kSignUp,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt.get<Authcubit>(),
        child: const SignUpView(),
      ),
    ),
    GoRoute(
      path: kSignin,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt.get<Authcubit>(),
        child: const SiginInView(),
      ),
    ),
  ]);
}
