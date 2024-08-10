import 'package:dalelapp/features/splash/presentation/views/splashView.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kSplashView = "/SplashView";
  static GoRouter goRoute = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
  ]);
}
