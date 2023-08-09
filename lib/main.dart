import 'package:events_app/src/core/utils/routes.dart';
import 'package:events_app/src/features/presentation/pages/home_page.dart';
import 'package:events_app/src/features/presentation/pages/login_page.dart';
import 'package:events_app/src/features/presentation/pages/main_page.dart';
import 'package:events_app/src/features/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      routes:
      {
        Routes.splash: (context) => const SplashPage(),
        Routes.login: (context) => const LoginPage(),
        Routes.main: (context) => const MainPage(),
        Routes.home: (context) => const HomePage(),
      },
    );
  }
}