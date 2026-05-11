import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../providers/auth_provider.dart';
import '../../ui/screens/splash_screen.dart';
import '../../ui/screens/login_screen.dart';
import '../../ui/screens/home_screen.dart';
import '../../ui/screens/signup_screen.dart';
import '../../ui/screens/forgot_password_screen.dart';
import '../../ui/screens/topic_detail_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final isAuth = ref.watch(authProvider);

  return GoRouter(
    initialLocation: '/splash',
    redirect: (context, state) {
      final loggingIn = state.uri.toString() == '/login';
      final splashing = state.uri.toString() == '/splash';
      final signingUp = state.uri.toString() == '/signup';
      final forgettingPass = state.uri.toString() == '/forgot_password';
      final detailingTopic = state.uri.toString().startsWith('/topic/');

      if (splashing || signingUp || forgettingPass || detailingTopic) {
        return null;
      }

      if (!isAuth && !loggingIn) {
        return '/login';
      }

      if (isAuth && (loggingIn || splashing)) {
        return '/home';
      }

      return null;
    },
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: '/forgot_password',
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/topic/:id',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return TopicDetailScreen(topicId: id);
        },
      ),
    ],
  );
});
