import 'package:go_router/go_router.dart';
import 'package:ui_design/features/auth/views/login_screen.dart';
import 'package:ui_design/features/auth/views/profile_screen.dart';
import 'package:ui_design/features/auth/views/signup_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path:"/login",
      name: "login",
      builder: (context, state) => const LoginPage()
    ),

    GoRoute(
      path:"/signup",
      name: "signup",
      builder: (context, state) => const SignUpPage()
    ),

    GoRoute(
      path:"/profile",
      name: "profile",
      builder: (context, state) => const ProfilePage()
    )
  ]
);