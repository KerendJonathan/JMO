
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/models/article.dart';
import 'package:myapp/screens/home_screen.dart';
import 'package:myapp/screens/news_screen.dart';
import 'package:myapp/screens/news_detail_screen.dart';
import 'package:myapp/screens/contact_screen.dart';
import 'package:myapp/screens/profile_screen.dart';
import 'package:myapp/screens/login_screen.dart';
import 'package:myapp/screens/splash_screen.dart'; // Import the splash screen
import 'package:myapp/widgets/scaffold_with_nav_bar.dart';

// Private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/', // Set initial location to splash screen
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/news_detail',
      builder: (context, state) {
        final article = state.extra as Article?;
        return article != null ? NewsDetailScreen(article: article) : const Scaffold(
          body: Center(child: Text('Error: Article not found.')),
        );
      },
    ),
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return ScaffoldWithNavBar(child: child);
      },
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/news',
          builder: (context, state) => const NewsScreen(),
        ),
        GoRoute(
          path: '/contact',
          builder: (context, state) => const ContactScreen(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfileScreen(),
        ),
      ],
    ),
  ],
);
