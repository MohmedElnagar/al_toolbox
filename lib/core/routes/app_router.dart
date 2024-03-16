import 'package:al_toolbox/features/home/ui/home_view.dart';
import 'package:al_toolbox/features/splash/ui/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeview = "/homeview";
  static const kSplash = "/";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeview,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
