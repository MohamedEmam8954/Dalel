import 'package:dalelapp/features/onboarding/presentation/view/OnboardingView.dart';
import 'package:dalelapp/features/splash/presentation/views/splashView.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kOnBoarding = "/OnBoarding";
  static GoRouter goRoute = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kOnBoarding,
      builder: (context, state) => const OnBoardingView(),
    ),
  ]);
}
